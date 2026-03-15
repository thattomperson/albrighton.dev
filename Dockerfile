# Build stage:
# Install tools, generate Tailwind sources for imported templUI components,
# compile CSS, generate templ code, and build the final binary.
FROM golang:1.25 AS build
WORKDIR /app

# Copy Go dependency files first so Docker can cache module downloads.
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the project.
COPY . .

# Install build-time dependencies.
RUN apt-get update && apt-get install -y wget ca-certificates && rm -rf /var/lib/apt/lists/*

# Download the Tailwind standalone binary for the current CPU architecture.
RUN arch="$(dpkg --print-architecture)" && \
    case "$arch" in \
      amd64) tailwind_arch="x64" ;; \
      arm64) tailwind_arch="arm64" ;; \
      *) echo "unsupported architecture: $arch" && exit 1 ;; \
    esac && \
    wget -O /usr/local/bin/tailwindcss "https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-${tailwind_arch}" && \
    chmod +x /usr/local/bin/tailwindcss

# Generate Tailwind sources so imported templUI components are scanned too.
RUN TEMPLUI_PATH="$(go list -m -f '{{.Dir}}' github.com/templui/templui)" && \
    test -n "$TEMPLUI_PATH" && \
    test -d "$TEMPLUI_PATH/components" && \
    printf '%s\n' \
      '@source "./**/*.templ";' \
      '@source "./**/*.js";' \
      "@source \"$TEMPLUI_PATH/components/**/*.templ\";" \
      "@source \"$TEMPLUI_PATH/components/**/*.js\";" \
      > ./assets/css/sources.generated.css && \
    tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --minify

# Generate Go files from .templ files.
RUN go tool templ generate

# Build the application as a static binary.
RUN CGO_ENABLED=0 GOOS=linux go build -o main ./cmd/server/main.go

# Deploy-Stage
FROM alpine:3.20.2
WORKDIR /app

# Install ca-certificates and sqlite for backups/debugging
RUN apk add --no-cache ca-certificates sqlite

# Set environment variable for runtime
ENV APP_ENV=production

# Copy the binary, CSS output, and content directory
COPY --from=build /app/main .
COPY --from=build /app/assets/css/output.css ./assets/css/output.css
COPY --from=build /app/content ./content

# Expose the port
EXPOSE 8090

# Command to run
CMD ["./main"]


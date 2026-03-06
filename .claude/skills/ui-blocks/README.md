# templUI Pro

Premium UI blocks for Go & templ.

## Usage

Copy blocks from the repo or web UI: pro.templui.io (login via magic link).

Or use `llm.md` with Claude Code, Cursor, Cline.

## Team Setup

### Single License

Clone the repo or browse blocks online.

### Team & Enterprise Licenses

Share the email account with your team (5 for Team, 25 for Enterprise).

Fork the repo to your org (industry standard pattern):

```bash
git clone https://github.com/templui/templui-pro.git
cd templui-pro
git remote rename origin upstream
git remote add origin https://github.com/YOUR-ORG/templui-pro.git
git push -u origin main
```

**Updates:**

```bash
git pull upstream main && git push origin main
```

## Requirements

[Base components from templUI](https://templui.io)

## Import Paths

```go
// Change
"github.com/templui/templui-pro/internal/ui/components/button"

// To
"yourproject/components/button"
```

## Support

- **Issues:** Report bugs or request features
- **Discussions:** Questions, ideas, help

## License

See [LICENSE](LICENSE)

package assets

import "embed"

//go:embed css/* fonts/* img/*
var AssetsFS embed.FS

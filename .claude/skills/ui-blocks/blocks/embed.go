package block

import "embed"

//go:embed **/*.templ
var Files embed.FS // Nicht exportiert (kleingeschrieben)

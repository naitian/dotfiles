local ls = require("luasnip")
require("luasnip.loaders.from_vscode").load()
ls.filetype_extend("htmldjango", {"html"})

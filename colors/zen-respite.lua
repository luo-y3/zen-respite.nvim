
local palette = require("zen_respite.palette").colors
local set = vim.api.nvim_set_hl

vim.g.colors_name = "zen-respite"
vim.o.background = "dark"
vim.cmd("hi clear")

local c = palette

-- Editor
set(0, "Normal", { fg = c.base1, bg = c.base02 })
set(0, "CursorLine", { bg = c.base00 })
set(0, "Visual", { bg = c.visual })
set(0, "LineNr", { fg = c.base0 })
set(0, "CursorLineNr", { fg = c.yellow })
set(0, "StatusLine", { fg = c.base2, bg = c.base01 })
set(0, "VertSplit", { fg = c.border })

-- Syntax
set(0, "Comment", { fg = c.base0, italic = true })
set(0, "Keyword", { fg = c.violet })
set(0, "Function", { fg = c.blue })
set(0, "String", { fg = c.green })
set(0, "Number", { fg = c.orange })
set(0, "Constant", { fg = c.cyan })
set(0, "Type", { fg = c.yellow })
set(0, "Error", { fg = c.red, bold = true })

-- UI
set(0, "Pmenu", { fg = c.base1, bg = c.base01 })
set(0, "PmenuSel", { fg = c.base03, bg = c.yellow })
set(0, "Search", { fg = c.base03, bg = c.yellow })
set(0, "IncSearch", { fg = c.base03, bg = c.orange })
set(0, "Cursor", { fg = c.base02, bg = c.cursor })
set(0, "MatchParen", { fg = c.orange, bold = true })
set(0, "Title", { fg = c.yellow, bold = true })
set(0, "Todo", { fg = c.orange, bold = true })
set(0, "Special", { fg = c.magenta })

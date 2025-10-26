-- zen-respite.nvim
-- A calm bamboo-zen inspired colorscheme, built upon solarized harmony

local colors = {
  -- Base shades
  base03 = "#0f100f", -- darkest bg (deep zen background)
  base02 = "#181a18", -- main background
  base01 = "#2c2e2b", -- lighter background (gutter)
  base00 = "#3a3d37", -- cursor line / selection
  base0  = "#a5a691", -- comments / faded text
  base1  = "#c4c5b5", -- main fg
  base2  = "#e5e6d3", -- lighter fg
  base3  = "#f6f7e0", -- brightest fg (ui highlights)

  -- Accents
  yellow = "#c4b28a",
  orange = "#d9a97c",
  red    = "#e67e80",
  magenta= "#c47fd5",
  violet = "#938aa9",
  blue   = "#7fb4ca",
  cyan   = "#7aa89f",
  green  = "#98bb6c",

  -- UI hints
  cursor = "#dcd5b8",
  visual = "#3f423a",
  border = "#41433d",
}

vim.g.colors_name = "zen-respite"
vim.o.background = "dark"
vim.cmd("hi clear")

local set = vim.api.nvim_set_hl


-- ✨ Editor
set(0, "Normal",        { fg = colors.base1, bg = "none" })
set(0, "CursorLine",    { bg = colors.base00 })
set(0, "Visual",        { bg = colors.visual })
set(0, "CursorLineNr",  { fg = colors.yellow })
set(0, "LineNr",        { fg = colors.base0, bg = "none" })
set(0, "StatusLine",    { fg = colors.base2, bg = "none" })
set(0, "VertSplit",     { fg = colors.border, bg = "none" })
set(0, "SignColumn",    { bg = "none"})

-- 🧠 Syntax
set(0, "Comment",       { fg = colors.base0, italic = true })
set(0, "Keyword",       { fg = colors.violet })
set(0, "Function",      { fg = colors.blue })
set(0, "String",        { fg = colors.green })
set(0, "Number",        { fg = colors.orange })
set(0, "Constant",      { fg = colors.cyan })
set(0, "Type",          { fg = colors.yellow })
set(0, "Error",         { fg = colors.red, bold = true })

-- 🧩 UI
set(0, "Pmenu",         { fg = colors.base1, bg = colors.base01 })
set(0, "PmenuSel",      { fg = colors.base03, bg = colors.yellow })
set(0, "Search",        { fg = colors.base03, bg = colors.yellow })
set(0, "IncSearch",     { fg = colors.base03, bg = colors.orange })
set(0, "Cursor",        { fg = colors.base02, bg = colors.cursor })
set(0, "MatchParen",    { fg = colors.orange, bold = true })
set(0, "Title",         { fg = colors.yellow, bold = true })
set(0, "Todo",          { fg = colors.orange, bold = true })
set(0, "Special",       { fg = colors.magenta })

-- ✅ Diagnostic / LSP
set(0, "DiagnosticError", { fg = colors.red })
set(0, "DiagnosticWarn",  { fg = colors.orange })
set(0, "DiagnosticInfo",  { fg = colors.blue })
set(0, "DiagnosticHint",  { fg = colors.cyan })

-- 🌿 Diff
set(0, "DiffAdd",    { bg = "#233524" })
set(0, "DiffChange", { bg = "#2d2d22" })
set(0, "DiffDelete", { bg = "#3a1f1f" })


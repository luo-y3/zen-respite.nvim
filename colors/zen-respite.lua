-- zen-respite.nvim/colors/zen-respite.lua
local set = vim.api.nvim_set_hl

vim.g.colors_name = "zen-respite"

return function(opts)
  opts = opts or {}
  local default_opts = { transparent = false }
  local config = vim.tbl_deep_extend("force", default_opts, opts)

  local c = require("zen_respite.palette").colors

  local bg_main = config.transparent and "None" or c.base03 
  local bg_alt  = config.transparent and "None" or c.base02 
  
  vim.o.background = "dark" 

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  -- === Editor UI ===
  set(0, "Normal",        { fg = c.base1, bg = bg_main })
  set(0, "NormalNC",      { bg = bg_main })
  set(0, "EndOfBuffer",   { bg = bg_main })
  set(0, "ColorColumn",   { bg = bg_alt })
  
  -- bg_alt for Contrast
  set(0, "NormalFloat",   { bg = bg_alt })
  set(0, "FloatBorder",   { fg = c.border, bg = bg_alt })
  set(0, "CursorLine",    { bg = c.visual })
  set(0, "StatusLine",    { fg = c.base2, bg = bg_alt })
  set(0, "Pmenu",         { fg = c.base1, bg = bg_alt })
  
  -- Line Numbers and Sign Column (Earthy Low Contrast)
  set(0, "SignColumn",    { fg = c.base00, bg = bg_main })
  set(0, "LineNr",        { fg = c.base00, bg = bg_main })
  set(0, "CursorLineNr",  { fg = c.green, bg = c.visual, bold = true }) 
  
  -- etc
  set(0, "VertSplit",     { fg = c.border, bg = bg_main })
  set(0, "Folded",        { fg = c.base0, bg = bg_alt })
  set(0, "FoldColumn",    { bg = bg_main })
  set(0, "Visual",        { bg = c.visual })
  set(0, "Cursor",        { fg = c.base02, bg = c.cursor })

  -- === Plugins UI ===
  set(0, "NvimTreeNormal",        { bg = bg_main })
  set(0, "TelescopeNormal",       { bg = bg_main })
  set(0, "TelescopeBorder",       { fg = c.border, bg = bg_main })
  set(0, "BufferLineBackground",  { bg = bg_main })
  set(0, "PmenuSel",              { fg = c.base03, bg = c.cyan }) 
  
  -- === Syntax ===
  set(0, "Comment",   { fg = c.base00, italic = true })
  set(0, "Keyword",   { fg = c.violet })
  set(0, "Function",  { fg = c.blue })
  set(0, "String",    { fg = c.cyan })
  set(0, "Number",    { fg = c.orange })
  set(0, "Constant",  { fg = c.green })
  set(0, "Type",      { fg = c.yellow }) 
  set(0, "Error",     { fg = c.red, bold = true })
  set(0, "Special",   { fg = c.magenta })

  -- === UI Components ===
  set(0, "Search",      { fg = c.base03, bg = c.yellow })
  set(0, "IncSearch",   { fg = c.base03, bg = c.orange })
  set(0, "MatchParen",  { fg = c.orange, bold = true })
  set(0, "Title",       { fg = c.cyan, bold = true }) 
  set(0, "Todo",        { fg = c.orange, bold = true })
end

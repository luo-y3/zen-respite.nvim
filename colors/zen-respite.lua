-- zen-respite.nvim/colors/zen-respite.lua

local set = vim.api.nvim_set_hl

vim.g.colors_name = "zen-respite"

return function(opts)
  opts = opts or {}
  local default_opts = { transparent = false }
  local config = vim.tbl_deep_extend("force", default_opts, opts)

  local c = require("zen_respite.palette").colors

  local bg_color = config.transparent and "None" or c.base03
  local bg_alt = config.transparent and "None" or c.base02
  vim.o.background = "dark"

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  -- Editor
  set(0, "Normal",        { fg = c.base1, bg = bg_color })
  set(0, "NormalNC",      { bg = bg_color })

  -- Float Window and Border
  set(0, "NormalFloat",   { bg = bg_alt })
  set(0, "FloatBorder",   { fg = c.base0, bg = bg_alt }) 

  -- Line Numbers/Sign Column 
  set(0, "SignColumn",    { fg = c.base0, bg = bg_color })
  set(0, "LineNr",        { fg = c.base0, bg = bg_color })
  set(0, "CursorLineNr",  { fg = c.yellow, bg = bg_alt, bold = true })
  
  -- Cursor Line
  set(0, "CursorLine",    { bg = bg_alt })

  set(0, "Visual",        { bg = c.visual })
  
  -- Split และ Status Line
  set(0, "StatusLine",    { fg = c.base2, bg = bg_alt })
  set(0, "VertSplit",     { fg = c.base0, bg = bg_alt })

  -- Syntax
  set(0, "Comment", { fg = c.base0, italic = true })
  set(0, "Keyword", { fg = c.violet })
  set(0, "Function", { fg = c.blue })
  set(0, "String", { fg = c.green })
  set(0, "Number", { fg = c.orange })
  set(0, "Constant", { fg = c.cyan })
  set(0, "Type", { fg = c.cyan })  
  set(0, "Error", { fg = c.red, bold = true })
  set(0, "Special", { fg = c.magenta })
  set(0, "Title", { fg = c.yellow, bold = true })

  -- UI
  set(0, "Pmenu", { fg = c.base1, bg = bg_alt })
  set(0, "PmenuSel", { fg = c.base03, bg = c.yellow })
  set(0, "Search", { fg = c.base03, bg = c.yellow })
  set(0, "IncSearch", { fg = c.base03, bg = c.orange })
  set(0, "Cursor", { fg = c.base02, bg = c.cursor })

end

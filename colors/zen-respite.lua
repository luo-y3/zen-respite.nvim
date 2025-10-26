
-- zen-respite.nvim/colors/zen-respite.lua
local set = vim.api.nvim_set_hl

vim.g.colors_name = "zen-respite"

return function(opts)
  opts = opts or {}
  local default_opts = { transparent = false }
  local config = vim.tbl_deep_extend("force", default_opts, opts)

  local c = require("zen_respite.palette").colors

  local bg_color = config.transparent and "none" or c.base03
  vim.o.background = "dark"

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  -- Editor
  set(0, "Normal", { fg = c.base1, bg = bg_color })
  set(0, "NormalNC", { bg = bg_color })
  set(0, "NormalFloat", { bg = bg_color })
  set(0, "SignColumn", { bg = bg_color })
  set(0, "CursorLine", { bg = bg_color })
  set(0, "LineNr", { bg = bg_color })
  set(0, "Visual", { bg = c.visual })

  -- Syntax
  set(0, "Comment", { fg = c.base0, italic = true })
  set(0, "Keyword", { fg = c.violet })
  set(0, "Function", { fg = c.blue })
  set(0, "String", { fg = c.green })
  set(0, "Number", { fg = c.orange })
  set(0, "Type", { fg = c.yellow })
  set(0, "Error", { fg = c.red, bold = true })

  -- UI
  set(0, "Pmenu", { fg = c.base1, bg = bg_color })
  set(0, "PmenuSel", { fg = c.base03, bg = c.yellow })
  set(0, "Search", { fg = c.base03, bg = c.yellow })
  set(0, "IncSearch", { fg = c.base03, bg = c.orange })
  set(0, "Cursor", { fg = c.base02, bg = c.cursor })
end

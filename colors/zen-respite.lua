-- zen-respite.nvim/lua/zen-respite/zen-respite.lua
local set = vim.api.nvim_set_hl

---@param c table The color palette
---@param config table The plugin configuration
function M.load_highlights(c, config)
  local highlights = require("zen-respite.groups").setup(c) 

  local bg_main = config.transparent and "None" or c.base03 
  local bg_alt  = config.transparent and "None" or c.base02 
  
  -- === Editor UI Overrides ===
  highlights.Normal = { fg = c.base1, bg = bg_main }
  highlights.NormalNC = { bg = bg_main }
  highlights.EndOfBuffer = { bg = bg_main }
  highlights.ColorColumn = { bg = c.visual } 
  
  -- bg_alt for Contrast
  highlights.NormalFloat = { bg = bg_alt }
  highlights.FloatBorder = { fg = c.border, bg = bg_alt }
  highlights.CursorLine = { bg = c.visual }
  highlights.StatusLine = { fg = c.base2, bg = bg_alt }
  highlights.Pmenu = { fg = c.base1, bg = bg_alt }
  
  -- Line Numbers
  highlights.SignColumn = { fg = c.base00, bg = bg_main }
  highlights.LineNr = { fg = c.base00, bg = bg_main }
  highlights.CursorLineNr = { fg = c.green, bg = c.visual, bold = true } 
  
  -- etc
  highlights.VertSplit = { fg = c.border, bg = bg_main }
  highlights.Folded = { fg = c.base0, bg = bg_alt }
  highlights.FoldColumn = { bg = bg_main }
  highlights.Visual = { bg = c.visual }
  highlights.Cursor = { fg = c.base02, bg = c.cursor }

  -- === Plugins UI ===
  highlights.NvimTreeNormal = { bg = bg_main }
  highlights.TelescopeNormal = { bg = bg_main }
  highlights.TelescopeBorder = { fg = c.border, bg = bg_main }
  highlights.BufferLineBackground = { bg = bg_main }
  highlights.PmenuSel = { fg = c.base03, bg = c.cyan } 
  
  -- === UI Components ===
  highlights.Search = { fg = c.base03, bg = c.yellow }
  highlights.IncSearch = { fg = c.base03, bg = c.orange }
  highlights.MatchParen = { fg = c.orange, bold = true }

  return highlights
end

return M

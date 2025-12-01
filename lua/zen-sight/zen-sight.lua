-- zen-sight.nvim/lua/zen-sight/zen-sight.lua
local M = {}

--- @param c table Final calculated colors (bg, fg, yellow, etc.)
--- @param config table Final configuration
function M.apply_highlights(c, config)
  local hl = {}

  -- Transparency handling logic
  local bg = config.transparent and "NONE" or c.bg
  local bg_sidebar = (config.styles.sidebars == "transparent") and "NONE" or c.bg_sidebar
  local bg_float = (config.styles.floats == "transparent") and "NONE" or c.bg_float

  -- Editor highlights
  hl.Normal = { fg = c.fg, bg = bg }
  hl.NormalFloat = { fg = c.fg, bg = bg_float }
  hl.NormalNC = config.dim_inactive and { fg = c.fg_alt, bg = bg } or { link = "Normal" }

  -- Base UI
  hl.Comment = vim.tbl_extend("force", { fg = c.comment }, config.styles.comments)
  hl.ColorColumn = { bg = c.bg_highlight }
  hl.Cursor = { fg = c.bg, bg = c.cursor }
  hl.CursorLine = { bg = c.bg_highlight }
  hl.CursorColumn = { bg = c.bg_highlight }
  hl.CursorLineNr = { fg = c.yellow, bold = true }
  hl.LineNr = { fg = c.fg_gutter }

  -- Sidebars (NvimTree, NeoTree, etc.)
  for _, win_name in ipairs(config.sidebars_windows or {}) do
    hl[win_name] = { bg = bg_sidebar }
  end
  hl.NvimTreeNormal = { fg = c.fg, bg = bg_sidebar } -- Explicit NvimTree
  hl.NeoTreeNormal = { fg = c.fg, bg = bg_sidebar } -- Explicit NeoTree

  -- Floating Windows / Popups
  hl.Pmenu = { fg = c.fg, bg = bg_float }
  hl.PmenuSel = { fg = c.bg, bg = c.blue }
  hl.TelescopeBorder = { fg = c.border, bg = bg_float }
  hl.TelescopeNormal = { fg = c.fg, bg = bg_float }

  -- Statusline
  hl.StatusLine = { fg = c.fg, bg = c.bg_statusline }
  hl.StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }

  -- Visual/Search
  hl.Visual = { bg = c.visual }
  hl.Search = { fg = c.bg, bg = c.yellow }

  -- === Syntax Highlights ===
  hl.Constant = { fg = c.cyan }
  hl.String = vim.tbl_extend("force", { fg = c.green }, config.styles.strings)
  hl.Number = { fg = c.magenta }
  hl.Function = vim.tbl_extend("force", { fg = c.yellow }, config.styles.functions)
  hl.Keyword = vim.tbl_extend("force", { fg = c.violet }, config.styles.keywords)
  hl.Type = { fg = c.yellow }

  -- === Treesitter / LSP / Diagnostics / Plugins (Retained all logic from your file) ===
  hl["@comment"] = { link = "Comment" }
  hl["@string"] = { link = "String" }
  hl["@number"] = { link = "Number" }
  hl["@function"] = { link = "Function" }
  hl["@keyword"] = { link = "Keyword" }
  hl["@type"] = { link = "Type" }
  hl.LspReferenceText = { bg = c.bg_highlight }
  hl.DiagnosticError = { fg = c.error }
  hl.GitSignsAdd = { fg = c.git_add }
  hl.TelescopeSelection = { fg = c.fg, bg = c.bg_highlight, bold = true }
  hl.DevIconLua = { fg = c.blue }
  hl.DevIcon = { fg = c.blue }

  -- User-defined overrides
  config.on_highlights(hl, c)

  return hl
end

return M

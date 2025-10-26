-- zen-respite.nvim/init.lua

local config = require('zen-respite.config')
local palette = require('zen-respite.palette')
local highlights_gen = require('zen-respite.zen-respite')

local M = {}

-- 1. Get colors (แยกส่วน Dark/Light ออกมาที่นี่)
local function get_colors(style)
  local c = palette.colors
    
  if style == "light" then
    return {
      -- Base colors (Light Theme)
      bg = c.base3, bg_alt = c.base2, bg_highlight = c.base1,
      bg_sidebar = c.base2, bg_statusline = c.base2, bg_float = c.base2,
      bg_popup = c.base2,
      
      fg = c.base01, fg_alt = c.base00, fg_gutter = c.base0,
      comment = c.base0,
      
      -- Accent colors
      yellow = c.yellow, orange = c.orange, red = c.red, magenta = c.magenta, violet = c.violet,
      blue = c.blue, cyan = c.cyan, green = c.green,
      
      -- UI/Git/Diagnostics (ใช้ค่าจากโค้ดเดิมของคุณ)
      cursor = c.base01, visual = "#d4dcd0", border = "#c5cfba",
      git_add = c.green, git_change = c.blue, git_delete = c.red,
      error = c.red, warning = c.yellow, info = c.blue, hint = c.cyan,
    }
  else
    return {
      -- Base colors (Dark Theme)
      bg = c.base03, bg_alt = c.base02, bg_highlight = c.base01,
      bg_sidebar = c.base02, bg_statusline = c.base02, bg_float = c.base02,
      bg_popup = c.base02,
      
      fg = c.base1, fg_alt = c.base0, fg_gutter = c.base00,
      comment = c.base00,
      
      -- Accent colors
      yellow = c.yellow, orange = c.orange, red = c.red, magenta = c.magenta, violet = c.violet,
      blue = c.blue, cyan = c.cyan, green = c.green,
      
      -- UI/Git/Diagnostics
      cursor = c.cursor, visual = c.visual, border = c.border,
      git_add = c.green, git_change = c.blue, git_delete = c.red,
      error = c.red, warning = c.yellow, info = c.blue, hint = c.cyan,
    }
  end
end

-- 2. Set terminal colors
local function set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.bg
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.fg_gutter
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.fg_alt
end

-- 3. Load the colorscheme
M.load = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "zen-respite"
  
  local colors = get_colors(config.config.style)
  -- เรียกใช้ Highlight Logic
  local highlights = highlights_gen.apply_highlights(colors, config.config)
  
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
  
  if config.config.terminal_colors then
    set_terminal_colors(colors)
  end
end

-- M.setup is the public API entry point
function M.setup(opts)
    config.setup(opts) -- กำหนด Options ก่อน
    M.load()           -- แล้วจึงโหลด Theme
end

M.get_colors = get_colors

return M

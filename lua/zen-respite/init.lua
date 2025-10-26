-- zen-respite.nvim/lua/zen-respite/init.lua (The complete plugin setup)
local M = {}

-- การตั้งค่าเริ่มต้น
local function extend_config(opts)
  local default_opts = { 
    transparent = false,
    terminal_colors = true, -- ตั้งค่าสี Terminal ด้วย
  }
  return vim.tbl_deep_extend("force", default_opts, opts or {})
end

---@param c table
function M.terminal(c)
  -- กำหนดสีสำหรับ Terminal ภายใน Neovim
  vim.g.terminal_color_0 = c.base03      -- Black
  vim.g.terminal_color_8 = c.base01      -- Black Bright

  vim.g.terminal_color_7 = c.base1       -- White
  vim.g.terminal_color_15 = c.base3      -- White Bright

  vim.g.terminal_color_1 = c.red         -- Red
  vim.g.terminal_color_9 = c.orange      -- Red Bright

  vim.g.terminal_color_2 = c.green       -- Green (Bamboo)
  vim.g.terminal_color_10 = c.cyan       -- Green Bright (Bamboo Leaf)

  vim.g.terminal_color_3 = c.yellow      -- Yellow
  vim.g.terminal_color_11 = c.yellow     -- Yellow Bright

  vim.g.terminal_color_4 = c.blue        -- Blue
  vim.g.terminal_color_12 = c.violet     -- Blue Bright

  vim.g.terminal_color_5 = c.magenta     -- Magenta
  vim.g.terminal_color_13 = c.magenta    -- Magenta Bright

  vim.g.terminal_color_6 = c.cyan        -- Cyan
  vim.g.terminal_color_14 = c.blue       -- Cyan Bright
end

---@param opts? table
function M.setup(opts)
  local config = extend_config(opts)

  local colors = require("zen-respite.palette").colors
  local groups = require("zen-respite.zen-respite").load_highlights(colors, config)

  -- === 1. Essential Neovim Setup ===
  vim.o.termguicolors = true
  
  -- ล้าง Highlight เก่า
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.background = "dark" 
  vim.g.colors_name = "zen-respite"

  -- === 2. Apply all highlight groups ===
  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  -- === 3. Setup Terminal Colors ===
  if config.terminal_colors then
    M.terminal(colors) 
  end

  return colors, groups, config
end

return M

-- zen-respite.nvim/lua/zen-respite/config.lua
local M = {}

-- กำหนดค่าเริ่มต้นทั้งหมด
M.defaults = {
  style = "dark", 
  transparent = true, -- ตั้งค่าเริ่มต้นเป็นโปร่งใส
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
    strings = {},
    -- กำหนดให้ sidebars และ floats โปร่งใสตามค่าเริ่มต้น
    sidebars = "transparent", 
    floats = "transparent",
  },
  dim_inactive = false,
  on_highlights = function(hl, c) end,
  -- รายชื่อ windows ที่เป็น sidebar
  sidebars_windows = { "qf", "help", "NvimTree", "NeoTree", "Outline" }, 
}

M.config = {}

--- @param options table|nil
function M.setup(options)
  M.config = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
  return M.config
end

return M

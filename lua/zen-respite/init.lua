-- zen-respite.nvim/lua/zen-respite/init.lua
local M = {}

M.setup = function()
  local groups = require("zen-respite.groups").setup()
  for groups, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, groups, setting)
  end
end

return M


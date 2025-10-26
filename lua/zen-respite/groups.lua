-- zen-respite.nvim/lua/zen-respite/groups.lua

local M = {}

local c = require("zen-respite.palette").colors

M.setup = function()
  return {
    -- Standard
    Comment = { fg = c.base0, italic = true },

    -- Treesitter
    ["@string"] = { fg = c.base0 }
  }
  
end

return M

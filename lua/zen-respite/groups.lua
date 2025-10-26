-- zen-respite.nvim/lua/zen-respite/groups.lua
local M = {}

---@param c table The color palette
function M.setup(c)
  return {
    -- === Standard Syntax Groups ===
    Comment = { fg = c.base00, italic = true }, 
    Keyword = { fg = c.violet },
    Function = { fg = c.blue },
    String = { fg = c.cyan }, 
    Number = { fg = c.orange },
    Constant = { fg = c.green },
    Type = { fg = c.yellow },
    Error = { fg = c.red, bold = true },
    Special = { fg = c.magenta },
    Title = { fg = c.cyan, bold = true }, 
    Todo = { fg = c.orange, bold = true },
    
    -- === Treesitter Groups ===
    ["@string"] = { fg = c.cyan }, 
    ["@function"] = { fg = c.blue }, 
    ["@variable"] = { fg = c.base1 },
    ["@keyword"] = { fg = c.violet },
    ["@type"] = { fg = c.yellow },
    ["@constant"] = { fg = c.green },
  }
end

return M

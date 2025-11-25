
-- zen-respite.nvim/lua/zen-respite/init.lua

local config = require("zen-respite.config")
local util = require("zen-respite.util")
local theme = require("zen-respite.theme")

local M = {}

function M.setup(opts)
  config.setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "zen-respite"

  local highlights = theme.setup()
  util.load(highlights)
end

return M

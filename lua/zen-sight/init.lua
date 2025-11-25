-- zen-sight.nvim/lua/zen-respite/init.lua

local config = require("zen-sight.config")
local util = require("zen-sight.util")
local theme = require("zen-sight.theme")

local M = {}

function M.setup(opts)
	config.setup(opts)
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "zen-sight"

	local highlights = theme.setup()
	util.load(highlights)
end

return M

-- zen-sight.nvim/lua/zen-sight/config.lua

local M = {}

M.defaults = {
  transparent = false,
  italic_comments = true,
  italic_keywords = false,
  bold_keywords = true,
  bold_functions = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
    strings = {},
  },
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})

  -- Apply legacy options if new style config not used
  if opts and opts.italic_comments ~= nil then
    M.options.styles.comments.italic = opts.italic_comments
  end
  if opts and opts.italic_keywords ~= nil then
    M.options.styles.keywords.italic = opts.italic_keywords
  end
  if opts and opts.bold_keywords ~= nil then
    M.options.styles.keywords.bold = opts.bold_keywords
  end
  if opts and opts.bold_functions ~= nil then
    M.options.styles.functions.bold = opts.bold_functions
  end
end

function M.get()
  -- Initialize with defaults if setup() was never called
  if vim.tbl_isempty(M.options) then
    M.setup()
  end
  return M.options
end

return M

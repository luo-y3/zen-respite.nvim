
-- zen-respite.nvim/lua/zen-respite/util.lua

local M = {}

function M.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  
  if color.link then
    vim.cmd("highlight! link " .. group .. " " .. color.link)
  end
end

function M.load(highlights)
  for group, colors in pairs(highlights) do
    M.highlight(group, colors)
  end
end

function M.apply_styles(color, styles)
  if not styles then
    return color
  end
  
  local style_parts = {}
  
  if styles.bold then
    table.insert(style_parts, "bold")
  end
  if styles.italic then
    table.insert(style_parts, "italic")
  end
  if styles.underline then
    table.insert(style_parts, "underline")
  end
  if styles.undercurl then
    table.insert(style_parts, "undercurl")
  end
  
  if #style_parts > 0 then
    color.style = table.concat(style_parts, ",")
  end
  
  return color
end

return M

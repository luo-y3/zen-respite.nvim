-- zen-respite.nvim/lua/zen-respite/palette.lua

local M = {}

M.colors = {
  -- Dark/Earthy Tones
  base03 = "#1a2520", -- Background : Deep, muted dark green/brown
  base02 = "#26352c", -- Background / Contrast
  base01 = "#4c594c",
  base00 = "#6e7c6d", -- Comment / Low Contrast
  
  -- Light / Creamy / Foreground Tones
  base0  = "#9da89a",
  base1  = "#c5d0c0", -- Foreground : Soft, light green / cream
  base2  = "#e3e7dc", 
  base3  = "#fdfcf3", -- Lightest Cream

  -- Accent Colors
  yellow = "#e2b761", -- Golden/Ochre Yellow
  orange = "#e07c5a", 
  red    = "#cc6666",
  magenta= "#d279a3",
  violet = "#9c81a9",
  blue   = "#7796b4",
  cyan   = "#6e9a42", -- Palm Leaf/Bamboo Green
  green  = "#a4b95f", -- Middle Green Yellow/Light Olive
  cursor = "#c5d0c0", 
  visual = "#33453a", -- Muted Dark Green for selection
  border = "#455a45", -- Darker green for borders
}

return M

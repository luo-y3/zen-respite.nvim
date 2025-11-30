-- zen-sight.nvim/lua/zen-respite/palette.lua

local M = {}

M.themes = {

  zen_meadow = {
    base03 = "#0F0F0B",
    base02 = "#2e3223",
    base01 = "#4a4f3a",
    base00 = "#777b63",
    base3 = "#5a6625",
    base2 = "#98a75a",
    base1 = "#d4deb2",
    base0 = "#f4f7e6",
    yellow = "#e0b14a",
    orange = "#e65e19",
    red = "#bd2828",
    magenta = "#d279a3",
    violet = "#9c81a9",
    blue = "#4080bf",
    cyan = "#1a98a6",
    green = "#86ac39",
    cursor = "#d6d9c7",
    visual = "#3a3e2e",
    border = "#575b44",
    hl = "#751606",
    bracket = "#cb4db0",
  },

  zen_forest = {
    base03 = "#1a2520",
    base02 = "#26352c",
    base01 = "#4c594c",
    base00 = "#6e7c6d",
    base3 = "#7d9774", -- Darker Foreground Green
    base2 = "#a5bfa4", -- Medium Foreground: Soft, Muted Light Green
    base1 = "#c6d8c3", -- Light Creamy Green
    base0 = "#e3eee2", -- Lightest Cream/Off-White
    -- Accent Colors
    yellow = "#e2b761", -- Golden/Ochre Yellow
    orange = "#e07c5a",
    red = "#cc6666",
    magenta = "#d279a3",
    violet = "#9c81a9",
    blue = "#7796b4",
    cyan = "#6e9a42", -- Palm Leaf/Bamboo Green
    green = "#a4b95f", -- Middle Green Yellow/Light Olive
    cursor = "#c5d0c0",
    visual = "#33453a", -- Muted Dark Green for selection
    border = "#455a45", -- Darker green for borders
    hl = "#5d1b0e",
  },

  zen_stone = {
    -- Moss & Stone
    base03 = "#1a2520",
    base02 = "#26352c",
    base01 = "#4c594c",
    base00 = "#6e7c6d",
    base3 = "#728c6e", -- Darker Foreground Green/Grey
    base2 = "#9fbda3", -- Medium Foreground: Muted Sage Green
    base1 = "#cdd9b7", -- Light Beige/Olive Cream
    base0 = "#f0f5e3", -- Lightest Cream/Pale Yellow
    -- Accent Colors
    yellow = "#e2b761", -- Golden/Ochre Yellow
    orange = "#e07c5a",
    red = "#cc6666",
    magenta = "#d279a3",
    violet = "#9c81a9",
    blue = "#7796b4",
    cyan = "#6e9a42", -- Palm Leaf/Bamboo Green
    green = "#a4b95f", -- Middle Green Yellow/Light Olive
    cursor = "#c5d0c0",
    visual = "#33453a", -- Muted Dark Green for selection
    border = "#455a45", -- Darker green for borders
    hl = "#5d1b0e",
  },

  zen_night = {
    base03 = "#000e1a",
    base02 = "#021627",
    base01 = "#041e34",
    base00 = "#475f6b",
    base3 = "#5c7a8a",
    base2 = "#8a9ea8",
    base1 = "#a7b6be",
    base0 = "#dde1e3",
    yellow = "#e2b761",
    orange = "#e07c5a",
    red = "#cc6666",
    magenta = "#d279a3",
    violet = "#9c81a9",
    blue = "#7796b4",
    cyan = "#6e9a42",
    green = "#a4b95f",
    cursor = "#c5d0c0",
    visual = "#33453a",
    border = "#455a45",
    hl = "#5d1b0e",
  },

  misty_pine = {
    base03 = "#1b2421",
    base02 = "#24322d",
    base01 = "#4a5a54",
    base00 = "#6a7a73",
    base3 = "#415a4a",
    base2 = "#7ea896",
    base1 = "#c3d9cc",
    base0 = "#e8f1ec",
    yellow = "#dfc574",
    orange = "#e18a64",
    red = "#cc6666",
    magenta = "#d18bb2",
    violet = "#a691c1",
    blue = "#84a5b8",
    cyan = "#6ea890",
    green = "#9ebd88",
    cursor = "#c8d4c9",
    visual = "#2e3d37",
    border = "#4a5a50",
    hl = "#5d1b0e",
  },

  zen_test = {
    base03 = "#0F0F0B",
    base02 = "#2e3223",
    base01 = "#4a4f3a",
    base00 = "#777b63",
    base3 = "#5a6625",
    base2 = "#98a75a",
    base1 = "#d4deb2",
    base0 = "#f4f7e6",
    yellow = "#e0b14a",
    orange = "#d97a4f",
    red = "#cc6666",
    magenta = "#d279a3",
    violet = "#9c81a9",
    blue = "#80a7c8",
    cyan = "#1a98a6",
    green = "#a6b95d",
    cursor = "#d6d9c7",
    visual = "#3a3e2e",
    border = "#575b44",
    hl = "#751606",
  },
}

function M.get(theme_name)
  return M.themes[theme_name] or M.themes.zen_meadow
end

return M

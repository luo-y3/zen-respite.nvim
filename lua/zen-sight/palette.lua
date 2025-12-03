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
    cyan = "#1aa890",
    green = "#86ac39",
    cursor = "#d6d9c7",
    visual = "#3a3e2e",
    border = "#575b44",
    hl = "#751606",
    bracket = "#cb4db0",
    bficonbase = "#415a4a",
    bficonactive = "#69bf9b",
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

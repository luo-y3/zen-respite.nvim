local colors = {
	base03 = "#0F0F0B", -- Darkest Black/BG
	base02 = "#2e3223", -- Darker BG
	base01 = "#4a4f3a", -- BG/Statusline Mid
	base00 = "#777b63", -- Statusline FG Mid
	base3 = "#5a6625", -- Mid Green/Accent BG
	base2 = "#98a75a", -- Light Green Accent
	base1 = "#d4deb2", -- Light FG
	base0 = "#f4f7e6", -- Brightest White/FG
	yellow = "#e0b14a", -- Accent
	orange = "#d97a4f", -- Accent
	red = "#cc6666", -- Error/Danger
	magenta = "#d279a3", -- Accent
	violet = "#9c81a9", -- Accent
	blue = "#80a7c8", -- Info/Blue
	cyan = "#1a98a6", -- Accent
	green = "#a6b95d", -- Success/Highlight
	cursor = "#d6d9c7",
	visual = "#3a3e2e", -- Visual Mode BG
	border = "#575b44",
	hl = "#751606",
}

local zen_resprite = {}

-- 1. NORMAL MODE (Using Green, Base3)
zen_resprite.normal = {
	a = { fg = colors.base03, bg = colors.green, gui = "bold" }, -- Mode: Black text on Green BG
	b = { fg = colors.green, bg = colors.base02 }, -- Branch/Diagnostics
	c = { fg = colors.base0, bg = colors.base01 }, -- Filename/Main
	x = { fg = colors.base0, bg = colors.base01 }, -- Search/Progress
	y = { fg = colors.base0, bg = colors.base02 }, -- Filetype/Progress
	z = { fg = colors.base03, bg = colors.green, gui = "bold" }, -- Location: White text on Accent BG
}

-- 2. INSERT MODE (Using Blue)
zen_resprite.insert = {
	a = { fg = colors.base03, bg = colors.blue, gui = "bold" },
	z = { fg = colors.base03, bg = colors.blue, gui = "bold" },
}

-- 3. VISUAL MODE (Using Orange)
zen_resprite.visual = {
	a = { fg = colors.base03, bg = colors.red, gui = "bold" },
	z = { fg = colors.base03, bg = colors.red, gui = "bold" },
}

-- 4. INACTIVE STATUSLINE (Subdued colors)
zen_resprite.inactive = {
	a = { fg = colors.base00, bg = "none" },
	b = { fg = colors.base01, bg = "none" },
	c = { fg = colors.base01, bg = "none" },
	z = { fg = colors.base01, bg = "none" },
}

return zen_resprite

-- zen-respite.nvim/lua/zen-respite/theme.lua

local palette = require("zen-respite.palette")
local config = require("zen-respite.config")
local util = require("zen-respite.util")

local M = {}

function M.setup()
  local c = palette.colors
  local cfg = config.get()
  local transparent = cfg.transparent
  local is_dark = cfg.style == "dark"
  
  -- Color mappings based on theme style
  local colors = {}
  
  if is_dark then
    -- Dark theme mapping
    colors.bg = transparent and "NONE" or c.base03
    colors.bg_alt = transparent and "NONE" or c.base03
    colors.bg_highlight = c.base02
    colors.bg_visual = c.visual
    colors.fg = c.base1
    colors.fg_alt = c.base0
    colors.fg_comment = c.base00
    colors.border = c.border
  else
    -- Light theme mapping (inverted)
    colors.bg = transparent and "NONE" or c.base0
    colors.bg_alt = transparent and "NONE" or c.base1
    colors.bg_highlight = c.base2
    colors.bg_visual = c.base2
    colors.fg = c.base01
    colors.fg_alt = c.base00
    colors.fg_comment = c.base0
    colors.border = c.base1
  end
  
  -- Common accent colors (same for both themes)
  colors.red = c.red
  colors.orange = c.orange
  colors.yellow = c.yellow
  colors.green = c.green
  colors.cyan = c.cyan
  colors.blue = c.blue
  colors.violet = c.violet
  colors.magenta = c.magenta
  colors.cursor = c.cursor
  
  local theme = {}
  
  -- Editor highlights
  theme.editor = {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = transparent and "NONE" or colors.bg_alt },
    NormalNC = { fg = colors.fg, bg = colors.bg },
    
    -- Cursor
    Cursor = { fg = colors.bg, bg = colors.cursor },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    TermCursor = { link = "Cursor" },
    TermCursorNC = { fg = colors.fg, bg = colors.bg_highlight },
    
    -- Line highlighting
    CursorLine = { bg = colors.bg_highlight },
    CursorColumn = { bg = colors.bg_highlight },
    ColorColumn = { bg = colors.bg_highlight },
    
    -- Visual
    Visual = { bg = colors.bg_visual },
    VisualNOS = { link = "Visual" },
    
    -- Search
    Search = { fg = colors.bg, bg = colors.yellow },
    IncSearch = { fg = colors.bg, bg = colors.orange },
    CurSearch = { link = "IncSearch" },
    
    -- Line numbers
    LineNr = { fg = colors.fg_comment },
    CursorLineNr = { fg = colors.yellow, style = "bold" },
    
    -- Splits and borders
    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },
    FloatBorder = { fg = colors.border, bg = transparent and "NONE" or colors.bg_alt },
    
    -- Statusline
    StatusLine = { fg = colors.fg, bg = colors.bg_highlight },
    StatusLineNC = { fg = colors.fg_comment, bg = colors.bg_alt },
    
    -- Tabline
    TabLine = { fg = colors.fg_comment, bg = colors.bg_alt },
    TabLineFill = { bg = colors.bg },
    TabLineSel = { fg = colors.fg, bg = colors.bg_highlight },
    
    -- Popup menu
    Pmenu = { fg = colors.fg, bg = colors.bg_alt },
    PmenuSel = { fg = colors.bg, bg = colors.blue },
    PmenuSbar = { bg = colors.bg_highlight },
    PmenuThumb = { bg = colors.fg_comment },
    
    -- Misc
    Directory = { fg = colors.blue },
    Folded = { fg = colors.fg_comment, bg = colors.bg_highlight },
    FoldColumn = { fg = colors.fg_comment, bg = colors.bg },
    SignColumn = { fg = colors.fg_alt, bg = transparent and "NONE" or colors.bg },
    Conceal = { fg = colors.fg_comment },
    
    -- Messages
    ErrorMsg = { fg = colors.red },
    WarningMsg = { fg = colors.yellow },
    ModeMsg = { fg = colors.green, style = "bold" },
    MoreMsg = { fg = colors.cyan },
    Question = { fg = colors.cyan },
    
    -- Spelling
    SpellBad = { sp = colors.red, style = "undercurl" },
    SpellCap = { sp = colors.yellow, style = "undercurl" },
    SpellLocal = { sp = colors.cyan, style = "undercurl" },
    SpellRare = { sp = colors.violet, style = "undercurl" },
    
    -- Diff
    DiffAdd = { fg = colors.green, bg = is_dark and c.base02 or c.base2 },
    DiffChange = { fg = colors.yellow, bg = is_dark and c.base02 or c.base2 },
    DiffDelete = { fg = colors.red, bg = is_dark and c.base02 or c.base2 },
    DiffText = { fg = colors.blue, bg = is_dark and c.base02 or c.base2, style = "bold" },
    
    -- Misc UI
    Title = { fg = colors.blue, style = "bold" },
    NonText = { fg = colors.fg_comment },
    EndOfBuffer = { fg = colors.bg },
    Whitespace = { fg = colors.fg_comment },
    SpecialKey = { fg = colors.fg_comment },
    MatchParen = { fg = colors.orange, style = "bold" },
    WildMenu = { fg = colors.bg, bg = colors.blue },
  }
  
  -- Syntax highlighting
  theme.syntax = {
    Comment = util.apply_styles({ fg = colors.fg_comment }, cfg.styles.comments),
    
    Constant = { fg = colors.cyan },
    String = util.apply_styles({ fg = colors.green }, cfg.styles.strings),
    Character = { fg = colors.green },
    Number = { fg = colors.cyan },
    Boolean = { fg = colors.cyan },
    Float = { fg = colors.cyan },
    
    Identifier = util.apply_styles({ fg = colors.blue }, cfg.styles.variables),
    Function = util.apply_styles({ fg = colors.yellow }, cfg.styles.functions),
    
    Statement = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    Conditional = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    Repeat = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    Label = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    Operator = { fg = colors.fg },
    Keyword = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    Exception = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    
    PreProc = { fg = colors.magenta },
    Include = { fg = colors.magenta },
    Define = { fg = colors.magenta },
    Macro = { fg = colors.magenta },
    PreCondit = { fg = colors.magenta },
    
    Type = { fg = colors.violet },
    StorageClass = { fg = colors.violet },
    Structure = { fg = colors.violet },
    Typedef = { fg = colors.violet },
    
    Special = { fg = colors.red },
    SpecialChar = { fg = colors.red },
    Tag = { fg = colors.blue },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.cyan },
    Debug = { fg = colors.red },
    
    Underlined = { style = "underline" },
    Ignore = { fg = colors.fg_comment },
    Error = { fg = colors.red, style = "bold" },
    Todo = { fg = colors.magenta, style = "bold" },
  }
  
  -- Treesitter highlights
  theme.treesitter = {
    -- Identifiers
    ["@variable"] = util.apply_styles({ fg = colors.fg }, cfg.styles.variables),
    ["@variable.builtin"] = { fg = colors.red },
    ["@variable.parameter"] = { fg = colors.fg },
    ["@variable.member"] = { fg = colors.blue },
    
    -- Constants
    ["@constant"] = { fg = colors.cyan },
    ["@constant.builtin"] = { fg = colors.cyan },
    ["@constant.macro"] = { fg = colors.magenta },
    
    -- Modules
    ["@module"] = { fg = colors.blue },
    ["@module.builtin"] = { fg = colors.red },
    
    -- Functions
    ["@function"] = util.apply_styles({ fg = colors.yellow }, cfg.styles.functions),
    ["@function.builtin"] = { fg = colors.yellow },
    ["@function.call"] = { fg = colors.yellow },
    ["@function.macro"] = { fg = colors.magenta },
    ["@function.method"] = { fg = colors.yellow },
    ["@function.method.call"] = { fg = colors.yellow },
    
    -- Constructors
    ["@constructor"] = { fg = colors.violet },
    
    -- Keywords
    ["@keyword"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    ["@keyword.function"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    ["@keyword.operator"] = { fg = colors.orange },
    ["@keyword.return"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    ["@keyword.conditional"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    ["@keyword.repeat"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    ["@keyword.import"] = { fg = colors.magenta },
    ["@keyword.exception"] = util.apply_styles({ fg = colors.orange }, cfg.styles.keywords),
    
    -- Operators
    ["@operator"] = { fg = colors.fg },
    
    -- Punctuation
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.special"] = { fg = colors.red },
    
    -- Strings
    ["@string"] = util.apply_styles({ fg = colors.green }, cfg.styles.strings),
    ["@string.regex"] = { fg = colors.cyan },
    ["@string.escape"] = { fg = colors.red },
    ["@string.special"] = { fg = colors.red },
    
    -- Characters
    ["@character"] = { fg = colors.green },
    ["@character.special"] = { fg = colors.red },
    
    -- Booleans
    ["@boolean"] = { fg = colors.cyan },
    
    -- Numbers
    ["@number"] = { fg = colors.cyan },
    ["@number.float"] = { fg = colors.cyan },
    
    -- Types
    ["@type"] = { fg = colors.violet },
    ["@type.builtin"] = { fg = colors.violet },
    ["@type.definition"] = { fg = colors.violet },
    ["@type.qualifier"] = { fg = colors.orange },
    
    -- Attributes
    ["@attribute"] = { fg = colors.magenta },
    ["@property"] = { fg = colors.blue },
    
    -- Comments
    ["@comment"] = util.apply_styles({ fg = colors.fg_comment }, cfg.styles.comments),
    ["@comment.documentation"] = { fg = colors.cyan },
    ["@comment.error"] = { fg = colors.red },
    ["@comment.warning"] = { fg = colors.yellow },
    ["@comment.todo"] = { fg = colors.magenta, style = "bold" },
    ["@comment.note"] = { fg = colors.cyan },
    
    -- Tags (HTML, XML, etc.)
    ["@tag"] = { fg = colors.blue },
    ["@tag.attribute"] = { fg = colors.cyan },
    ["@tag.delimiter"] = { fg = colors.fg },
    
    -- Markup
    ["@markup.strong"] = { style = "bold" },
    ["@markup.italic"] = { style = "italic" },
    ["@markup.underline"] = { style = "underline" },
    ["@markup.strikethrough"] = { style = "strikethrough" },
    ["@markup.heading"] = { fg = colors.blue, style = "bold" },
    ["@markup.link"] = { fg = colors.cyan, style = "underline" },
    ["@markup.link.url"] = { fg = colors.green },
    ["@markup.link.label"] = { fg = colors.blue },
    ["@markup.list"] = { fg = colors.red },
    ["@markup.list.checked"] = { fg = colors.green },
    ["@markup.list.unchecked"] = { fg = colors.fg_comment },
    ["@markup.quote"] = { fg = colors.fg_comment, style = "italic" },
    ["@markup.raw"] = { fg = colors.green },
    
    -- Diff
    ["@diff.plus"] = { fg = colors.green },
    ["@diff.minus"] = { fg = colors.red },
    ["@diff.delta"] = { fg = colors.yellow },
  }
  
  -- LSP semantic tokens
  theme.lsp = {
    ["@lsp.type.class"] = { fg = colors.violet },
    ["@lsp.type.decorator"] = { fg = colors.magenta },
    ["@lsp.type.enum"] = { fg = colors.violet },
    ["@lsp.type.enumMember"] = { fg = colors.cyan },
    ["@lsp.type.function"] = { fg = colors.yellow },
    ["@lsp.type.interface"] = { fg = colors.violet },
    ["@lsp.type.macro"] = { fg = colors.magenta },
    ["@lsp.type.method"] = { fg = colors.yellow },
    ["@lsp.type.namespace"] = { fg = colors.blue },
    ["@lsp.type.parameter"] = { fg = colors.fg },
    ["@lsp.type.property"] = { fg = colors.blue },
    ["@lsp.type.struct"] = { fg = colors.violet },
    ["@lsp.type.type"] = { fg = colors.violet },
    ["@lsp.type.typeParameter"] = { fg = colors.violet },
    ["@lsp.type.variable"] = { fg = colors.fg },
  }
  
  -- Diagnostics
  theme.diagnostics = {
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.cyan },
    DiagnosticHint = { fg = colors.blue },
    
    DiagnosticUnderlineError = { sp = colors.red, style = "undercurl" },
    DiagnosticUnderlineWarn = { sp = colors.yellow, style = "undercurl" },
    DiagnosticUnderlineInfo = { sp = colors.cyan, style = "undercurl" },
    DiagnosticUnderlineHint = { sp = colors.blue, style = "undercurl" },
    
    DiagnosticVirtualTextError = { fg = colors.red, bg = transparent and "NONE" or colors.bg_alt },
    DiagnosticVirtualTextWarn = { fg = colors.yellow, bg = transparent and "NONE" or colors.bg_alt },
    DiagnosticVirtualTextInfo = { fg = colors.cyan, bg = transparent and "NONE" or colors.bg_alt },
    DiagnosticVirtualTextHint = { fg = colors.blue, bg = transparent and "NONE" or colors.bg_alt },
    
    DiagnosticSignError = { fg = colors.red },
    DiagnosticSignWarn = { fg = colors.yellow },
    DiagnosticSignInfo = { fg = colors.cyan },
    DiagnosticSignHint = { fg = colors.blue },
  }
  
  -- Git signs
  theme.git = {
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.red },
    
    GitSignsAddNr = { fg = colors.green },
    GitSignsChangeNr = { fg = colors.yellow },
    GitSignsDeleteNr = { fg = colors.red },
    
    GitSignsAddLn = { fg = colors.green },
    GitSignsChangeLn = { fg = colors.yellow },
    GitSignsDeleteLn = { fg = colors.red },
  }
  
  -- Combine all highlights
  local highlights = {}
  for _, group in pairs({ theme.editor, theme.syntax, theme.treesitter, theme.lsp, theme.diagnostics, theme.git }) do
    highlights = vim.tbl_extend("force", highlights, group)
  end
  
  -- Terminal colors
  if cfg.terminal_colors then
    if is_dark then
      vim.g.terminal_color_0 = c.base02
      vim.g.terminal_color_1 = c.red
      vim.g.terminal_color_2 = c.green
      vim.g.terminal_color_3 = c.yellow
      vim.g.terminal_color_4 = c.blue
      vim.g.terminal_color_5 = c.magenta
      vim.g.terminal_color_6 = c.cyan
      vim.g.terminal_color_7 = c.base1
      vim.g.terminal_color_8 = c.base00
      vim.g.terminal_color_9 = c.orange
      vim.g.terminal_color_10 = c.green
      vim.g.terminal_color_11 = c.yellow
      vim.g.terminal_color_12 = c.blue
      vim.g.terminal_color_13 = c.violet
      vim.g.terminal_color_14 = c.cyan
      vim.g.terminal_color_15 = c.base3
    else
      vim.g.terminal_color_0 = c.base2
      vim.g.terminal_color_1 = c.red
      vim.g.terminal_color_2 = c.green
      vim.g.terminal_color_3 = c.yellow
      vim.g.terminal_color_4 = c.blue
      vim.g.terminal_color_5 = c.magenta
      vim.g.terminal_color_6 = c.cyan
      vim.g.terminal_color_7 = c.base01
      vim.g.terminal_color_8 = c.base0
      vim.g.terminal_color_9 = c.orange
      vim.g.terminal_color_10 = c.green
      vim.g.terminal_color_11 = c.yellow
      vim.g.terminal_color_12 = c.blue
      vim.g.terminal_color_13 = c.violet
      vim.g.terminal_color_14 = c.cyan
      vim.g.terminal_color_15 = c.base03
    end
  end
  
  return highlights
end

return M

local M = {
  opts = {
    -- Whether the cursorline should have a darker background.
    cursorline     = false,
    -- Whether the cursor should be gray or the secondary accent color.
    colored_cursor = false,
    -- Variant 1 (blue & purple), 2 (purple & yellow), or 3 (blue & yellow).
    variant        = 1,
    -- Self-explanatory.
    transparent_bg = true,
    -- Whether normal text should use the brightest or second-brightest shade.
    bright_fg      = false,

    -- Extra styles (bold, italic, underline, and undercurl booleans).
    styles = {
      comments  = { },
      strings   = { },
      keywords  = { },
      functions = { },
      variables = { },
      operators = { },
      types     = { },
      -- TODOs, NOTEs, BUGs, FIXMEs, etc.
      todos     = { }
    }
  },

  colors = {
    gray1 = "#2b2b32",
    gray2 = "#1e1e24",
    gray3 = "#111114",
    gray4 = "#0b0b0d",
    gray5 = "#080808",

    white1 = "#d2d2d3",
    white2 = "#9393a2",
    white3 = "#51505f",

    purple1 = "#b294ff",
    purple2 = "#936df3",

    blue1 = "#8b9efd",
    blue2 = "#7289fd",

    yellow1 = "#edb15b",
    yellow2 = "#d79b48",

    green = "#62ae48",
    red   = "#d16556"
  }
}

local variants = {
  [1] = {
    primary1   = M.colors.blue1,
    primary2   = M.colors.blue2,
    secondary1 = M.colors.purple1,
    secondary2 = M.colors.purple2
  },

  [2] = {
    primary1   = M.colors.purple1,
    primary2   = M.colors.purple2,
    secondary1 = M.colors.yellow1,
    secondary2 = M.colors.yellow2
  },

  [3] = {
    primary1   = M.colors.blue1,
    primary2   = M.colors.blue2,
    secondary1 = M.colors.yellow1,
    secondary2 = M.colors.yellow2
  },
}

local colors = M.colors

function M.setup(conf)
  M.opts = vim.tbl_deep_extend("force", { }, M.opts, conf or { })

  local variant = variants[M.opts.variant]

  colors = vim.tbl_deep_extend("force", { }, colors, variant, {
    fg         = M.opts.bright_fg      and M.colors.white1       or M.colors.white2,
    bg         = M.opts.transparent_bg and ""                    or M.colors.gray5,
    cursorline = M.opts.cursorline     and M.colors.gray3        or "",
    cursor     = M.opts.colored_cursor and variant.secondary2 or M.colors.white2
  })
end

M.setup()

local function hl(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

vim.cmd "highlight clear"
vim.cmd "syntax reset"

vim.g.colors_name = "degraded"

-- alpha-nvim
hl("AlphaButtons",     { fg = colors.gray1 })
hl("AlphaHeaderLabel", { fg = colors.white2 })
hl("AlphaShortcut",    { fg = colors.purple2 })
hl("AlphaHeader",      { fg = colors.white2 })
hl("AlphaFooter",      { fg = colors.white3, italic = true })

-- blink.cmp
-- hl("BlinkCmpKind", { fg = colors.gray3, bg = colors.white1 })
-- hl("BlinkCmpMenuSelection", { fg = colors.gray3, bg = colors.white1 })
hl("BlinkCmpLabelMatch", { bold = true })
hl("BlinkCmpMenuBorder", { fg = colors.gray4, bg = nil })

-- render-markdown.nvim
hl("RenderMarkdownCode",       { bg = colors.gray3 })
hl("RenderMarkdownCodeInline", { fg = colors.blue2 })
hl("RenderMarkdownDash",       { link = "WinSeparator" })

-- blink.indent
hl("BlinkIndent",    { fg = colors.gray3 })
hl("BlinkIndentCur", { fg = colors.gray3 })

-- gitsigns.nvim
hl("Added",                { fg = colors.green })
hl("Changed",              { fg = colors.yellow2 })
hl("Removed",              { fg = colors.red })
hl("GitSignsDeleteVirtLn", { fg = colors.red })

-- telescope.nvim
hl("TelescopePromptNormal",  { bg = colors.gray3 })
hl("TelescopePromptBorder",  { fg = colors.gray3, bg = nil })
hl("TelescopePromptPrefix",  { fg = colors.gray1 })
hl("TelescopeResultsNormal", { fg = colors.white3, bg = colors.gray4 })
hl("TelescopeResultsBorder", { fg = colors.gray4, bg = nil })
hl("TelescopePreviewNormal", { fg = colors.white1, bg = colors.gray3 })
hl("TelescopePreviewBorder", { fg = colors.gray3, bg = nil })
hl("TelescopePreviewTitle",  { fg = colors.white1, bg = nil, bold = true })
hl("TelescopeMatching",      { bold = true })
hl("TelescopeSelection",     { fg = colors.white1, bg = colors.gray2, bold = true })

-- Custom statusline (sorry I didn't include lualine or the others)
hl("StatusLine",          { fg = colors.white2, bg = nil })
hl("StatusLineMode",      { fg = colors.gray3, bg = colors.white1 })
hl("StatusLinePos",       { fg = colors.white2, bg = nil })
hl("StatusLineSyntax",    { fg = colors.white1, bg = nil })
hl("StatusLineMacro",     { fg = colors.purple2, bg = nil })
hl("StatusLineFile",      { fg = colors.white2, bg = nil })
hl("StatusLineMod",       { fg = colors.white1, bg = nil })
hl("StatusLineError",     { fg = colors.purple2, bg = nil })
hl("StatusLineWarn",      { fg = colors.yellow2, bg = nil })
hl("StatusLineMisc",      { fg = colors.blue2, bg = nil })
hl("StatusLineGitBranch", { fg = colors.white1, bg = nil, bold = true })
hl("StatusLineGitLines",  { fg = colors.white2, bg = nil })

-- Custom winbar
hl("WinBar",    { fg = colors.white1, bg = nil, bold = true })
hl("WinBarNC",  { fg = colors.white3, bg = nil })
hl("WinBarLOC", { fg = colors.white3 })
hl("WinBarMod", { fg = colors.white1 })

-- Diagnostics
hl("DiagnosticError",          { fg = colors.purple2 })
hl("DiagnosticHint",           { fg = colors.blue2 })
hl("DiagnosticInfo",           { fg = colors.blue2 })
hl("DiagnosticOk",             { fg = colors.white3 })
hl("DiagnosticWarn",           { fg = colors.yellow2 })
hl("DiagnosticUnderlineError", { sp = colors.purple2, underline = true })
hl("DiagnosticUnderlineHint",  { sp = colors.blue2, underline = true })
hl("DiagnosticUnderlineInfo",  { sp = colors.blue2, underline = true })
hl("DiagnosticUnderlineOk",    { sp = colors.white3, underline = true })
hl("DiagnosticUnderlineWarn",  { sp = colors.yellow2, underline = true })
hl("DiagnosticDeprecated",     { fg = colors.white3, strikethrough = true })

-- Vanilla
hl("Normal",       { fg = colors.fg, bg = colors.bg })
hl("NormalFloat",  { fg = colors.fg, bg = colors.gray4 })
hl("EndOfBuffer",  { fg = colors.gray3 })
-- TODO: Option to add dimming to inactive windows.
--       hl("NormalNC", { fg = colors.white2, bg = colors.gray4 })
hl("Debug",        { fg = colors.purple2 })
hl("Directory",    { fg = colors.white2 })
hl("Error",        { fg = colors.purple2 })
hl("ErrorMsg",     { fg = colors.purple1 })
hl("Warning",      { fg = colors.white2 })
hl("WarningMsg",   { fg = colors.white2 })
-- NOTE: I don't know where this is used.
hl("Exception",    { fg = colors.white2 })
-- TODO: Is this not visible enough?
hl("IncSearch",    { fg = colors.white1, bg = colors.gray2, bold = true })
hl("MatchParen",   { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Search",       { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Substitute",   { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Macro",        { fg = colors.secondary2 })
hl("ModeMsg",      { fg = colors.white2 })
hl("MoreMsg",      { fg = colors.white1 })
-- NOTE: Where???
hl("Question",     { })
hl("SpecialKey",   { fg = colors.purple2 })
hl("Visual",       { bg = colors.gray2 })
hl("Title",        { fg = colors.white1, bold = true })
hl("Conceal",      { fg = colors.white3 })
hl("NonText",      { fg = colors.white3 })
hl("Cursor",       { fg = colors.gray1, bg = colors.cursor })
hl("LineNr",       { fg = colors.gray1 })
hl("WinSeparator", { fg = colors.gray2 })
hl("ColorColumn",  { bg = colors.gray3 })
hl("SignColumn",   { fg = colors.gray1 })
hl("CursorLine",   { bg = colors.cursorline })
hl("CursorLineNr", { fg = colors.white1, bold = true })
hl("Pmenu", { fg = colors.white3, bg = colors.gray4 })
hl("PmenuSbar", { bg = colors.gray4 })
hl("PmenuThumb", { bg = colors.gray3 })
hl("PmenuSel", { fg = colors.white1, bg = colors.gray2, bold = true })

-- Syntax
hl("Boolean", { fg = colors.purple1 })
hl("Character", { fg = colors.purple2 })
hl("Comment", { fg = colors.white3, italic = true })
hl("Conditional", { fg = colors.white2 })
hl("Constant", { fg = colors.white1, bold = true })
hl("Delimiter", { fg = colors.white1 })
hl("Float", { fg = colors.purple1 })
hl("Function", { fg = colors.blue2 })
hl("Identifier", { fg = colors.white2 })
hl("Keyword", { fg = colors.white2 })
-- hl("Label", { })
hl("Number", { fg = colors.purple1 })
hl("Operator", { fg = colors.white2 })
hl("Special", { fg = colors.white1 })
hl("SpecialChar", { fg = colors.purple2 })
hl("Statement", { fg = colors.white2 })
-- TODO: What?
-- hl("StorageClass", { })
hl("String", { fg = colors.purple2 })
hl("Tag", { fg = colors.blue2 })
hl("Todo", { fg = colors.blue2 })
hl("Type", { fg = colors.white2 })

-- Treesitter
hl("@type.builtin", { link = "Type" })
hl("@number", { link = "Number" })
hl("@variable.member", { fg = colors.white2 })
hl("@function.builtin", { link = "Function" })
hl("@function.call", { fg = colors.blue2, italic = true })
hl("@function.method.call", { fg = colors.blue2, italic = true })
hl("@variable", { fg = colors.white1 })
hl("@punctuation.delimiter", { fg = colors.white1 })
hl("@punctuation.bracket", { fg = colors.white1 })
hl("@keyword.modifier", { fg = colors.white1 })
hl("@constant", { fg = colors.white1, bold = true })
hl("@constant.builtin", { fg = colors.purple1 })
hl("@namespace", { fg = colors.white1, bold = true })
hl("@module", { fg = colors.white1, bold = true })

-- TODO: All of these.
hl("@comment.warning", { fg = colors.yellow2, bold = true })

-- Lua and Vimscript
hl("@keyword.vim", { link = "String" })
hl("@function.macro.vim", { link = "String" })
hl("@module.builtin.lua", { fg = colors.white1 })

-- Nix
hl("@keyword.import.nix", { link = "@function.call" })

-- Markdown
hl("@spell.markdown", { fg = colors.white2 })
hl("@markup.heading", { link = "Title" })
hl("@markup.link", { fg = colors.white1 })

return M

local colors = {
  gray1 = "#2b2b32",
  gray2 = "#1e1e24",
  gray3 = "#111114",
  gray4 = "#0d0d0f",
  gray5 = "#080808",

  white1 = "#d2d2df",
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
hl("BlinkCmpKind", { fg = colors.white1, bold = true })
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
hl("StatusLinePos",       { fg = colors.white2, bg = colors.gray3 })
hl("StatusLineSyntax",    { fg = colors.white1, bg = nil })
hl("StatusLineMacro",     { fg = colors.purple2, bg = nil })
hl("StatusLineFile",      { fg = colors.white2, bg = colors.gray3 })
hl("StatusLineMod",       { fg = colors.white1, bg = colors.gray3 })
hl("StatusLineError",     { fg = colors.purple2, bg = nil })
hl("StatusLineWarn",      { fg = colors.yellow2, bg = nil })
hl("StatusLineMisc",      { fg = colors.blue2, bg = nil })
hl("StatusLineGitBranch", { fg = colors.white1, bg = nil, bold = true })
hl("StatusLineGitLines",  { fg = colors.white2, bg = nil })

-- Custom winbar
hl("WinBar",     { fg = colors.white1, bg = colors.gray3, bold = true })
hl("WinBarFill", { bg = nil })
hl("WinBarNC",   { fg = colors.white3, bg = colors.gray3 })
hl("WinBarLOC",  { fg = colors.white3 })
hl("WinBarMod",  { fg = colors.white1, bg = colors.gray3 })

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
hl("Normal",       { fg = colors.white2, bg = nil })
hl("NormalFloat",  { fg = colors.white2, bg = colors.gray4 })
hl("EndOfBuffer",  { fg = colors.gray3 })
hl("Debug",        { fg = colors.purple2 })
hl("Directory",    { fg = colors.white2 })
hl("Error",        { fg = colors.purple2 })
hl("ErrorMsg",     { fg = colors.purple2 })
hl("Warning",      { fg = colors.white2 })
hl("WarningMsg",   { fg = colors.white2 })
hl("Exception",    { fg = colors.white2 })
hl("IncSearch",    { fg = colors.white1, bg = colors.gray2, bold = true })
hl("MatchParen",   { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Search",       { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Substitute",   { fg = colors.white1, bg = colors.gray2, bold = true })
hl("Macro",        { fg = colors.secondary2 })
hl("ModeMsg",      { fg = colors.white2 })
hl("MoreMsg",      { fg = colors.white1 })
-- TODO: Where is this used?
hl("Question",     { })
hl("SpecialKey",   { fg = colors.purple2 })
hl("Visual",       { bg = colors.gray2 })
hl("Title",        { fg = colors.white1, bold = true })
hl("Conceal",      { fg = colors.white3 })
hl("NonText",      { fg = colors.white3 })
hl("Cursor",       { fg = colors.gray1, bg = colors.cursor })
hl("LineNr",       { fg = colors.gray1 })
hl("WinSeparator", { fg = colors.gray2 })
hl("ColorColumn",  { bg = colors.gray2 })
hl("SignColumn",   { fg = colors.gray1 })
hl("CursorLine",   { bg = colors.cursorline })
hl("CursorLineNr", { fg = colors.white1, bold = true })
hl("Pmenu",        { fg = colors.white3, bg = colors.gray4 })
hl("PmenuSbar",    { bg = colors.gray4 })
hl("PmenuThumb",   { bg = colors.gray3 })
hl("PmenuSel",     { fg = colors.white1, bg = colors.gray2, bold = true })

-- Syntax
hl("Boolean",     { fg = colors.purple2 })
hl("Character",   { fg = colors.purple2 })
hl("Comment",     { fg = colors.white3, italic = true })
hl("Conditional", { fg = colors.white2 })
hl("Constant",    { fg = colors.yellow2 })
hl("Delimiter",   { fg = colors.white1 })
hl("Float",       { fg = colors.purple2 })
hl("Function",    { fg = colors.blue2 })
hl("Identifier",  { fg = colors.white2 })
hl("Keyword",     { fg = colors.white2, italic = true })
-- TODO: Where is this used?
-- hl("Label", { })
hl("Number",      { fg = colors.purple2 })
hl("Operator",    { fg = colors.white1 })
hl("Special",     { fg = colors.white1 })
hl("SpecialChar", { fg = colors.purple2 })
hl("Statement",   { fg = colors.white2 })
hl("String",      { fg = colors.purple2, italic = true })
hl("Tag",         { fg = colors.blue2 })
hl("Todo",        { fg = colors.blue2 })
hl("Type",        { fg = colors.white2 })

-- Treesitter
hl("@type.builtin",          { link = "Type" })
hl("@number",                { link = "Number" })
hl("@variable.member",       { fg = colors.white2 })
hl("@function.builtin",      { link = "Function" })
hl("@variable",              { fg = colors.white1 })
hl("@punctuation.delimiter", { fg = colors.white1 })
hl("@punctuation.bracket",   { fg = colors.white1 })
hl("@keyword.modifier",      { fg = colors.white1 })
hl("@constant",              { fg = colors.yellow2 })
hl("@constant.builtin",      { fg = colors.purple2 })
hl("@namespace",             { fg = colors.yellow2 })
hl("@module",                { fg = colors.yellow2 })

-- Lua and Vimscript
hl("@keyword.vim",        { link = "String" })
hl("@function.macro.vim", { link = "String" })
hl("@module.builtin.lua", { fg = colors.white1 })

-- Nix
hl("@keyword.import.nix", { link = "@function.call" })

-- Markdown
hl("@spell.markdown", { fg = colors.white2 })
hl("@markup.heading", { link = "Title" })
hl("@markup.link",    { fg = colors.white1 })

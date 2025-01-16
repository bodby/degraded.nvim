local colors = {
  gray1 = "#29292d",
  gray2 = "#1c1c21",
  gray3 = "#0a0a0a",

  white1 = "#d2d2e0",
  white2 = "#9999a4",
  white3 = "#52525a",

  purple = "#936df3",
  blue   = "#7289fd",
  yellow = "#d79b48",
  green  = "#62c073",
  red    = "#d16556"
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
hl("AlphaShortcut",    { fg = colors.white1, bold = true })
hl("AlphaHeader",      { fg = colors.white1, bold = true })
hl("AlphaFooter",      { fg = colors.white3, italic = true })

-- blink.cmp
-- TODO: Should everything be italic/bold?
hl("BlinkCmpMenuBorder",    { fg = colors.gray1, bg = nil })
hl("BlinkCmpMenu",          { fg = colors.white3 })
hl("BlinkCmpKind",          { fg = colors.white1, bold = true })
hl("BlinkCmpMenuSelection", { fg = colors.white1, bold = true })
hl("BlinkCmpLabelMatch",    { bold = true })

-- render-markdown.nvim
hl("RenderMarkdownCode",       { bg = colors.gray1 })
hl("RenderMarkdownCodeInline", { fg = colors.blue })
hl("RenderMarkdownDash",       { link = "WinSeparator" })

-- blink.indent
hl("BlinkIndent",    { fg = colors.gray1 })
hl("BlinkIndentCur", { fg = colors.gray1 })

-- virt-column.nvim
hl("VirtColumn", { fg = colors.gray1, bg = nil })

-- gitsigns.nvim
hl("Added",                { fg = colors.green })
hl("Changed",              { fg = colors.yellow })
hl("Removed",              { fg = colors.red })
hl("GitSignsDeleteVirtLn", { fg = colors.red })

-- telescope.nvim
hl("TelescopePromptNormal",  { bg = nil })
hl("TelescopePromptBorder",  { fg = colors.gray1, bg = nil })
hl("TelescopePromptPrefix",  { fg = colors.white3 })
hl("TelescopeResultsNormal", { fg = colors.white3, bg = nil })
hl("TelescopeResultsBorder", { fg = colors.gray1, bg = nil })
hl("TelescopePreviewNormal", { fg = colors.white1, bg = nil })
hl("TelescopePreviewBorder", { fg = colors.gray1, bg = nil })
hl("TelescopePreviewTitle",  { fg = colors.white1, bg = nil, bold = true })
hl("TelescopeMatching",      { bold = true })
hl("TelescopeSelection",     { fg = colors.white1, bg = nil, bold = true })

-- Custom statusline (sorry I didn't include lualine or the others)
hl("StatusLine",          { fg = colors.gray1, bg = nil })
hl("StatusLineMode",      { fg = colors.gray1, bg = colors.white1 })
hl("StatusLinePos",       { fg = colors.white2, bg = nil })
hl("StatusLineSyntax",    { fg = colors.white1, bg = nil })
hl("StatusLineMacro",     { fg = colors.white1, bg = nil, bold = true })
hl("StatusLineFile",      { fg = colors.white2, bg = nil })
hl("StatusLineMod",       { fg = colors.white1, bg = nil })
hl("StatusLineError",     { fg = colors.purple, bg = nil })
hl("StatusLineWarn",      { fg = colors.yellow, bg = nil })
hl("StatusLineMisc",      { fg = colors.blue, bg = nil })
hl("StatusLineGitBranch", { fg = colors.white1, bg = nil, bold = true })
hl("StatusLineGitLines",  { fg = colors.white2, bg = nil })

-- Custom winbar
hl("WinBar",     { fg = colors.white1, bg = nil, bold = true })
hl("WinBarFill", { fg = colors.gray1, bg = nil })
hl("WinBarNC",   { fg = colors.white3, bg = nil })
hl("WinBarLOC",  { fg = colors.white3 })
hl("WinBarMod",  { fg = colors.white1, bg = nil })

-- Diagnostics
hl("DiagnosticError",          { fg = colors.purple })
hl("DiagnosticHint",           { fg = colors.blue })
hl("DiagnosticInfo",           { fg = colors.blue })
hl("DiagnosticOk",             { fg = colors.white3 })
hl("DiagnosticWarn",           { fg = colors.yellow })
hl("DiagnosticUnderlineError", { sp = colors.purple, underline = true })
hl("DiagnosticUnderlineHint",  { sp = colors.blue, underline = true })
hl("DiagnosticUnderlineInfo",  { sp = colors.blue, underline = true })
hl("DiagnosticUnderlineOk",    { sp = colors.white3, underline = true })
hl("DiagnosticUnderlineWarn",  { sp = colors.yellow, underline = true })
hl("DiagnosticDeprecated",     { fg = colors.white3, strikethrough = true })

-- Vanilla
hl("Normal",       { fg = colors.white2, bg = nil })
hl("NormalFloat",  { fg = colors.white2, bg = colors.gray3 })
hl("EndOfBuffer",  { fg = colors.gray1 })
hl("Debug",        { fg = colors.purple })
hl("Directory",    { fg = colors.white2 })
hl("Error",        { fg = colors.purple })
hl("ErrorMsg",     { fg = colors.purple })
hl("Warning",      { fg = colors.white2 })
hl("WarningMsg",   { fg = colors.white2 })
hl("Exception",    { fg = colors.white2 })
hl("IncSearch",    { fg = colors.white1, bg = colors.gray2, bold = true })
hl("MatchParen",   { fg = colors.white1, bg = colors.gray1, bold = true })
hl("Search",       { fg = colors.white1, bg = colors.gray1, bold = true })
hl("Substitute",   { fg = colors.white1, bg = colors.gray1, bold = true })
hl("Macro",        { fg = colors.purple })
hl("ModeMsg",      { fg = colors.white2 })
hl("MoreMsg",      { fg = colors.white1 })
hl("SpellBad",     { sp = colors.yellow, undercurl = true })
hl("SpellRare",    { sp = colors.blue, undercurl = true })
hl("SpellCap",     { sp = colors.blue, undercurl = true })

hl("Question",      { fg = colors.white2 })
hl("SpecialKey",    { fg = colors.purple })
hl("Visual",        { bg = colors.gray2 })
hl("Title",         { fg = colors.white1, bold = true })
hl("Conceal",       { fg = colors.white3 })
hl("Cursor",        { fg = colors.gray3, bg = colors.white2 })
hl("LineNr",        { fg = colors.gray1 })
hl("LineNrSpecial", { fg = colors.white3 })
hl("WinSeparator",  { fg = colors.gray1 })
hl("ColorColumn",   { fg = colors.gray1, bg = nil })
hl("SignColumn",    { fg = colors.gray1 })
hl("CursorLine",    { bg = nil })
hl("CursorLineNr",  { fg = colors.white1, bold = true })
hl("Pmenu",         { fg = colors.white3, bg = colors.gray3 })
hl("PmenuSbar",     { bg = colors.gray3 })
hl("PmenuThumb",    { bg = colors.gray1 })
hl("PmenuSel",      { fg = colors.white1, bg = colors.gray2, bold = true })

-- Syntax
hl("Boolean",     { fg = colors.purple })
hl("Character",   { fg = colors.purple })
hl("Comment",     { fg = colors.white3, italic = true })
hl("Conditional", { fg = colors.white2 })
hl("Constant",    { fg = colors.yellow })
hl("Delimiter",   { fg = colors.white1 })
hl("Float",       { fg = colors.purple })
hl("Function",    { fg = colors.blue })
hl("Identifier",  { fg = colors.white2 })
hl("Keyword",     { fg = colors.white2 })
-- TODO: Where is this used?
hl("Label",       { fg = "#ff0000" })
hl("Number",      { fg = colors.purple })
hl("Operator",    { fg = colors.white1 })
hl("Special",     { fg = colors.white1 })
hl("SpecialChar", { fg = colors.purple })
hl("Statement",   { fg = colors.white2 })
hl("String",      { fg = colors.purple })
hl("Tag",         { fg = colors.blue })
hl("Todo",        { fg = colors.blue })
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
hl("@constant",              { fg = colors.yellow })
hl("@constant.builtin",      { fg = colors.purple })
hl("@namespace",             { fg = colors.yellow })
hl("@module",                { fg = colors.yellow })
hl("@module.builtin",        { fg = colors.yellow })

-- Lua and Vimscript
hl("@keyword.vim",        { link = "String" })
hl("@function.macro.vim", { link = "String" })

-- Nix
hl("@keyword.import.nix", { link = "@function.call" })

-- Markdown
-- TODO: Don't highlight @spell, that highlights literally everything.
hl("@spell.markdown", { fg = colors.white2 })
hl("@markup.heading", { link = "Title" })
hl("@markup.link",    { fg = colors.white1 })

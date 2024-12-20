local M = {}

local colors = {
  gray1 = "#2b2b2c",
  gray2 = "#1e1e20",
  gray3 = "#111112",
  gray4 = "#0b0b0c",

  white1 = "#d2d2d3",
  white2 = "#959596",
  white3 = "#515053",

  purple1 = "#b294ff",
  purple2 = "#936df3",

  blue1 = "#8b9efd",
  blue2 = "#7289fd",

  yellow1 = "#edb15b",
  yellow2 = "#d79b48",

  green = "#62ae48",
  red = "#d16556"
}

vim.cmd "highlight clear"
vim.cmd "syntax reset"

vim.g.colors_name = "degraded"

local hl = vim.api.nvim_set_hl

hl(0, "AlphaButtons", { fg = colors.gray1 })
hl(0, "AlphaHeaderLabel", { fg = colors.white2 })
hl(0, "AlphaShortcut", { fg = colors.purple2 })
hl(0, "AlphaHeader", { fg = colors.white2 })
hl(0, "AlphaFooter", { fg = colors.white3, italic = true })

-- hl(0, "BlinkCmpKind", { fg = colors.gray3, bg = colors.white1 })
-- hl(0, "BlinkCmpMenuSelection", { fg = colors.gray3, bg = colors.white1 })
hl(0, "BlinkCmpLabelMatch", { bold = true })
hl(0, "BlinkCmpMenuBorder", { fg = colors.gray4, bg = nil })

hl(0, "RenderMarkdownCode", { bg = colors.gray3 })
hl(0, "RenderMarkdownDash", { link = "WinSeparator" })

-- hl(0, "BlinkIndent", { fg = colors.gray1 })
-- hl(0, "BlinkIndentCur", { fg = colors.gray1 })

hl(0, "Added", { fg = colors.green })
hl(0, "Changed", { fg = colors.yellow2 })
hl(0, "Removed", { fg = "#d16556" })
hl(0, "GitSignsDeleteVirtLn", { fg = colors.red })

hl(0, "TelescopePromptNormal", { bg = colors.gray3 })
hl(0, "TelescopePromptBorder", { fg = colors.gray3, bg = nil })
hl(0, "TelescopePromptPrefix", { fg = colors.gray1 })
hl(0, "TelescopeResultsNormal", { fg = colors.white3, bg = colors.gray4 })
hl(0, "TelescopeResultsBorder", { fg = colors.gray4, bg = nil })
hl(0, "TelescopePreviewNormal", { fg = colors.white1, bg = colors.gray3 })
hl(0, "TelescopePreviewBorder", { fg = colors.gray3, bg = nil })
hl(0, "TelescopePreviewTitle", { fg = colors.white1, bg = nil, bold = true })
hl(0, "TelescopeMatching", { bold = true })
hl(0, "TelescopeSelection", { fg = colors.white1, bg = colors.gray2, bold = true })

-- Native
hl(0, "StatusLine", { fg = colors.white2, bg = nil })
hl(0, "StatusLineMode", { fg = colors.gray3, bg = colors.white1 })
hl(0, "StatusLinePos", { fg = colors.white2, bg = nil })
hl(0, "StatusLineSyntax", { fg = colors.white1, bg = nil })
hl(0, "StatusLineMacro", { fg = colors.purple2, bg = nil })
hl(0, "StatusLineFile", { fg = colors.white2, bg = nil })
hl(0, "StatusLineMod", { fg = colors.white1, bg = nil })
hl(0, "StatusLineError", { fg = colors.purple2, bg = nil })
hl(0, "StatusLineWarn", { fg = colors.yellow2, bg = nil })
hl(0, "StatusLineMisc", { fg = colors.blue2, bg = nil })
hl(0, "StatusLineGitBranch", { fg = colors.white1, bg = nil, bold = true })
hl(0, "StatusLineGitLines", { fg = colors.white2, bg = nil })

hl(0, "WinBar", { fg = colors.white1, bg = nil, bold = true })
hl(0, "WinBarNC", { fg = colors.white3, bg = nil })
hl(0, "WinBarLOC", { fg = colors.white3 })
hl(0, "WinBarMod", { fg = colors.white1 })

hl(0, "FoldColumn", { fg = colors.gray1 })
hl(0, "FoldColumnClosed", { fg = colors.white1 })

hl(0, "DiagnosticError", { fg = colors.purple2 })
hl(0, "DiagnosticHint", { fg = colors.blue2 })
hl(0, "DiagnosticInfo", { fg = colors.blue2 })
hl(0, "DiagnosticOk", { fg = colors.white3 })
hl(0, "DiagnosticWarn", { fg = colors.yellow2 })

hl(0, "DiagnosticUnderlineError", { sp = colors.purple2, underline = true })
hl(0, "DiagnosticUnderlineHint", { sp = colors.blue2, underline = true })
hl(0, "DiagnosticUnderlineInfo", { sp = colors.blue2, underline = true })
hl(0, "DiagnosticUnderlineOk", { sp = colors.white3, underline = true })
hl(0, "DiagnosticUnderlineWarn", { sp = colors.yellow2, underline = true })

hl(0, "DiagnosticDeprecated", { fg = colors.white3, strikethrough = true })

-- Misc
hl(0, "Normal", { fg = colors.white1, bg = nil })
hl(0, "NormalFloat", { fg = colors.white1, bg = colors.gray4 })
hl(0, "EndOfBuffer", { fg = colors.gray3 })
-- hl(0, "NormalNC", { fg = colors.white2, bg = colors.gray4 })
hl(0, "Debug", { fg = colors.purple2 })
hl(0, "Directory", { fg = colors.blue2 })
hl(0, "Error", { fg = colors.purple2 })
hl(0, "ErrorMsg", { fg = colors.purple1 })
hl(0, "Warning", { fg = colors.white2 })
hl(0, "WarningMsg", { fg = colors.white2 })
-- TODO: Is this a keyword? I saw this used in Zig once.
hl(0, "Exception", { fg = colors.white2 })
-- TODO: Is this not visible enough?
hl(0, "IncSearch", { fg = colors.white1, bg = colors.gray1, bold = true })
hl(0, "MatchParen", { fg = colors.white1, bg = colors.gray1, bold = true })
-- Used in '%s' commands.
hl(0, "Search", { fg = colors.white1, bg = colors.gray1, bold = true })
hl(0, "Substitute", { fg = colors.white1, bg = colors.gray1, bold = true })
-- TODO: No.
hl(0, "Macro", { fg = colors.blue2 })
hl(0, "ModeMsg", { fg = colors.white2 })
hl(0, "MoreMsg", { fg = colors.white1 })
-- TODO: What?
hl(0, "Question", {})
hl(0, "SpecialKey", { fg = colors.purple2 })
hl(0, "Visual", { bg = colors.gray1 })
hl(0, "Title", { fg = colors.white1, bold = true })
hl(0, "Conceal", { fg = colors.white3 })
hl(0, "NonText", { fg = colors.white3 })
hl(0, "Cursor", { fg = colors.gray3, bg = colors.white2 })
hl(0, "LineNr", { fg = colors.gray1 })
hl(0, "WinSeparator", { fg = colors.gray2 })
hl(0, "ColorColumn", { bg = colors.gray4 })
hl(0, "SignColumn", { fg = colors.gray1 })
hl(0, "CursorLine", {})
hl(0, "CursorLineNr", { fg = colors.white1, bold = true })
hl(0, "Pmenu", { fg = colors.white3, bg = colors.gray4 })
hl(0, "PmenuSbar", { bg = colors.gray4 })
hl(0, "PmenuThumb", { bg = colors.gray3 })
hl(0, "PmenuSel", { fg = colors.white1, bg = colors.gray2, bold = true })

-- Syntax
hl(0, "Boolean", { fg = colors.purple1 })
hl(0, "Character", { fg = colors.purple2 })
hl(0, "Comment", { fg = colors.white3, italic = true })
hl(0, "Conditional", { fg = colors.white2 })
hl(0, "Constant", { fg = colors.white1, bold = true })
hl(0, "Delimiter", { fg = colors.white1 })
hl(0, "Float", { fg = colors.purple1 })
hl(0, "Function", { fg = colors.blue2 })
hl(0, "Identifier", { fg = colors.white2 })
hl(0, "Keyword", { fg = colors.white2 })
-- hl(0, "Label", {})
hl(0, "Number", { fg = colors.purple1 })
hl(0, "Operator", { fg = colors.white1 })
hl(0, "Special", { fg = colors.white1 })
hl(0, "SpecialChar", { fg = colors.purple2 })
hl(0, "Statement", { fg = colors.white2 })
-- TODO: What?
-- hl(0, "StorageClass", {})
hl(0, "String", { fg = colors.purple2 })
hl(0, "Tag", { fg = colors.blue2 })
hl(0, "Todo", { fg = colors.blue2 })
hl(0, "Type", { fg = colors.white2 })

-- Treesitter
hl(0, "@type.builtin", { link = "Type" })
hl(0, "@number", { link = "Number" })
hl(0, "@module", { fg = colors.white1 })
hl(0, "@variable.member", { fg = colors.white2 })
hl(0, "@function.builtin", { link = "Function" })
hl(0, "@function.call", { fg = colors.blue2 })
hl(0, "@namespace.builtin", { fg = colors.white1 })
hl(0, "@variable", { fg = colors.white1 })

-- Lua and Vimscript
hl(0, "@keyword.vim", { link = "String" })
hl(0, "@function.macro.vim", { link = "String" })
hl(0, "@constant.lua", { fg = colors.white1, bold = true })
hl(0, "@constant.builtin.lua", { fg = colors.purple1 })
hl(0, "@module.builtin.lua", { fg = colors.white1 })

-- Nix
hl(0, "@constant.builtin.nix", { fg = colors.purple1 })
hl(0, "@keyword.import.nix", { link = "@function.call" })

-- C++
hl(0, "@module.cpp", { fg = colors.white1 })

-- Markdown
hl(0, "@spell.markdown", { fg = colors.white2 })
hl(0, "@markup.heading", { link = "Title" })
hl(0, "@markup.link", { fg = colors.white1 })

return M

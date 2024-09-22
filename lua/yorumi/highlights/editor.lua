local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")

  return {
    ColorColumn   = { bg = palette.yoru2 },
    Conceal       = { bg = palette.kuroiGray },
    CurSearch     = { bg = palette.sangoYellow, fg = palette.yoru0 },
    Cursor        = { bg = palette.tsuki3, fg = palette.yoru0 },
    lCursor       = { link = "Cursor" },
    CursorIM      = { link = "Cursor" },
    CursorColumn  = { bg = palette.yoru2 },
    CursorLine    = { link = "CursorColumn" },
    Directory     = { fg = palette.kairoBlue },
    DiffAdd       = { bg = palette.kuroiGreen, fg = palette.kairoGreen },
    DiffChange    = { bg = palette.kuroiYellow, fg = palette.kairoYellow },
    DiffDelete    = { bg = palette.kuroiRed, fg = palette.kairoRed },
    DiffText      = { bg = palette.tsuki3 },
    EndOfBuffer   = { fg = palette.yoru2 },
    ErrorMsg      = { fg = palette.kairoRed },
    WinSeparator  = { fg = palette.yoru3 },
    VertSplit     = { link = "WinSeparator" },
    Folded        = { fg = palette.kairoMagenta, bg = palette.yoru3 },
    FoldColumn    = { bg = palette.yoru3 },
    SignColumn    = { bg = palette.yoru0, fg = palette.tsuki4 },
    IncSearch     = { bg = palette.kuroiYellow, fg = palette.kairoYellow },
    Substitute    = { bg = palette.kuroiGreen, fg = palette.kairoGreen },
    LineNr        = { fg = palette.kuroiGray },
    CursorLineNr  = { bg = palette.yoru2, fg = palette.tsuki4 },
    MatchParen    = { bg = palette.kuroiGray, fg=palette.tsuki4 },
    ModeMsg       = { bg = palette.yoru2, bold = true },
    MsgArea       = vim.o.cmdheight == 0 and { link = "StatusLine" } or { fg = palette.tsuki2 },
    MsgSeparator  = { bg = vim.o.cmdheight == 0 and palette.yoru0 or palette.yoru2 },
    MoreMsg       = { fg = palette.sangoBlue },
    NonText       = { fg = palette.yoru3 },
    Normal        = { bg = palette.yoru0, fg = palette.tsuki2 },
    NormalFloat   = { bg = palette.kuroiViolet, fg = palette.tsuki3 },
    FloatBorder   = { bg = palette.yoru0, fg = palette.tsuki1 },
    FloatTitle    = { fg = palette.tsuki2 },
    FloatFooter   = { fg = palette.tsuki2 },
    NormalNC      = config.dimInactive and { bg = palette.yoru2, fg = palette.tsuki2 } or { link = "Normal" },
    Pmenu         = { bg = palette.yoru1, fg = palette.tsuki3 },
    PmenuSel      = { bg = palette.yoru2, fg = palette.tsuki3 },
    PmenuKind     = { bg = palette.yoru0, fg = palette.tsuki2 },
    PmenuKindSel  = { bg = palette.yoru2, fg = palette.tsuki3 },
    PmenuExtra    = { bg = palette.yoru0, fg = palette.tsuki2 },
    PmenuExtraSel = { bg = palette.yoru2, fg = palette.tsuki3 },
    PmenuSbar     = { bg = palette.yoru3 },
    PmenuThumb    = { bg = palette.kuroiGray },
    Question      = { link = "MoreMsg" },
    QuickFixLine  = { bg = palette.yoru3 },
    Seach         = { bg = palette.kuroiBlack, fg = palette.kairoYellow },
    SpecialKey    = { fg = palette.sangoRed },
    SpellBad      = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoRed },
    SpellCap      = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoYellow },
    SpellLocal    = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoYellow },
    SpellRare     = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoYellow },
    StatusLine    = { bg = palette.yoru1, fg = palette.tsuki2 },
    StatusLineNC  = { bg = palette.yoru2, fg = palette.tsuki3 },
    TabLine       = { bg = palette.yoru3 },
    TabLineFill   = { bg = palette.yoru0 },
    TabLineSel    = { bg = palette.yoru0 },
    Title         = { bg = palette.yoru2, fg = palette.sangoMagenta },
    Visual        = { bg = palette.kuroiGray, fg = palette.tsuki3 },
    VisualNOS     = { link = "Visual" },
    WarningMsg    = { fg = palette.sangoYellow },
    Whitespace    = { bg = palette.yoru2 },
    WildMenu      = { link = "Pmenu" },
    WinBar        = { fg = palette.tsuki2, bg = "NONE" },
    WinBarNC      = { fg = palette.yoru3, bg = config.dimInactive and palette.yoru2 or "NONE" },

    debugPC       = { bg = palette.umiRed },
    -- debugBreakpoint = 

    LspReferenceText  = { bg = palette.tsuki2 },
    LspReferenceRead  = { link = "LspReferenceText" },
    LspReferenceWrite = { bg = palette.tsuki2, underline = true },

    DiagnosticError = { fg = palette.sangoRed },
    DiagnosticWarn  = { fg = palette.sangoYellow },
    DiagnosticInfo  = { fg = palette.kairoBlue },
    DiagnosticHint  = { fg = palette.sangoCyan },
    DiagnosticOk    = { fg = palette.kairoGreen },

    DiagnosticFloatingError = { fg = palette.sangoRed },
    DiagnosticFloatingWarn  = { fg = palette.sangoYellow },
    DiagnosticFloatingInfo  = { fg = palette.kairoBlue },
    DiagnosticFloatingHint  = { fg = palette.sangoCyan },
    DiagnosticFloatingOk    = { fg = palette.kairoGreen },

    DiagnosticSignError = { fg = palette.sangoRed },
    DiagnosticSignWarn  = { fg = palette.sangoYellow },
    DiagnosticSignInfo  = { fg = palette.kairoBlue },
    DiagnosticSignHint  = { fg = palette.sangoCyan },
    DiagnosticSignOk    = { fg = palette.kairoGreen },

    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn  = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo  = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint  = { link = "DiagnosticHint" },

    DiagnosticUnderlineError = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoRed },
    DiagnosticUnderlineWarn  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoYellow },
    DiagnosticUnderlineInfo  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.kairoBlue },
    DiagnosticUnderlineHint  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.sangoCyan },

    LspSignatureActiveParameter = { fg = palette.sangoYellow },
    LspCodeLens = { fg = palette.tsuki0 },

    difAdded    = { fg = palette.kairoGreen },
    diffRemoved = { fg = palette.kairoRed },
    diffDeleted = { fg = palette.umiRed },
    diffChanged = { fg = palette.sangoYellow },
    diffOldFile = { fg = palette.sangoRed },
    diffNewFile = { fg = palette.sangoGreen },
  }
end

return M

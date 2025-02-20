local M = {}

---@param conf KeraColorscheme.InternalConfig
M.get_colors = function(conf)
    local p = conf.colors

    local hl = {
        ColorColumn      = { bg = p.placeholder },
        Conceal          = { fg = p.color200, bg = "none" },
        CurSearch        = { link = 'IncSearch' },
        Cursor           = { fg = p.color200, bg = p.placeholder },
        vCursor          = { gui = "reverse" },
        iCursor          = { gui = "reverse" },
        lCursor          = { gui = "reverse" },
        CursorIM         = { gui = "reverse" },
        CursorColumn     = { bg = p.color800 },
        CursorLine       = { bg = p.color600 },
        CursorLineNr     = { fg = p.color300 },
        Debug            = { fg = p.primary },
        debugPC          = { bg = p.color800 },
        debugBreakpoint  = { bg = p.placeholder, fg = p.color200 },
        DiffAdd          = { bg = p.color700, },
        DiffChange       = { fg = p.color200, bg = p.color700 },
        DiffDelete       = { bg = p.color700 },
        DiffText         = { bg = p.color700 },
        DiffAdded        = { link = 'DiffAdd' },
        DiffRemoved      = { link = 'DiffDelete' },
        DiffFile         = { fg = p.info },
        DiffIndexLine    = { fg = p.color400 },
        diffAdded        = { link = 'DiffAdd' },
        diffChanged      = { link = 'DiffChange' },
        diffRemoved      = { link = 'DiffDelete' },
        Directory        = { fg = p.color300, bg = "none" },
        ErrorMsg         = { fg = p.error, style = 'bold' },
        EndOfBuffer      = { fg = p.color400 or p.color600 },
        FloatBorder      = { bg = "#202020", fg = p.color200 }, -- Hover border
        FloatTitle       = { fg = p.builtin, bold = true, bg = "none" },
        FloatFooter      = { fg = p.color100, bg = "none" },
        Folded           = { fg = p.color200, bg = "none" }, -- TODO: Change none to panel color
        FoldColumn       = { fg = p.color200, bg = "none" },
        IncSearch        = { fg = p.color200, bg = "none", gui = "bold" },
        LineNr           = { fg = p.comment, bg = "#0E1019" },
        MatchParen       = { fg = p.color200, bg = p.color700 },
        MoreMsg          = { fg = p.color200, gui = "bold" },
        MsgSeparator     = { fg = p.builtin, bg = p.placeholder, gui = "bold" },
        NonText          = { fg = p.color500 },
        Normal           = { fg = p.fg, bg = "none" },
        NormalNC         = { fg = p.color200, bg = "#0E1019" },
        NormalFloat      = { bg = "NONE", fg = p.color200 }, -- Hover background
        ModeMsg          = { fg = p.color200 },
        Pmenu            = { fg = p.color100, bg = "none" },
        PmenuSel         = { fg = p.color200, bg = p.color400 },
        PmenuSbar        = { bg = p.colo700 },
        PmenuThumb       = { bg = p.color600 },
        Question         = { fg = p.warning },
        QuickFixLine     = { fg = p.error, gui = "underline" },
        Search           = { fg = p.color200, bg = p.color600 },
        SignColumn       = { fg = p.color200, bg = "none" },
        SpecialKey       = { fg = p.color200 },
        SpellBad         = { sp = p.error, style = 'undercurl' },
        SpellCap         = { sp = p.blue1, style = 'undercurl' },
        SpellLocal       = { sp = p.warning, style = 'undercurl' },
        SpellRare        = { sp = p.blue1, style = 'undercurl' },
        StatusLine       = { fg = p.color200, bg = p.color800 },
        StatusLineNC     = { fg = p.color200, bg = p.color800 },
        StatusLineTerm   = { link = 'StatusLine' },
        StatusLineTermNC = { link = 'StatusLineNC' },
        Substitute       = { fg = p.info, bg = p.placeholder },
        TabLine          = { fg = p.color200 },
        TabLineFill      = { bg = p.color800 },
        TabLineSel       = { fg = p.color200, bg = p.color800 },
        Terminal         = { fg = p.color100, bg = "none" },
        ToolbarButton    = { fg = p.placeholder, bg = p.colo700 },
        ToolbarLine      = { fg = p.color100 },
        Visual           = { fg = p.color200, bg = p.color600 },
        VisualNOS        = { fg = "none", bg = p.color400, gui = "underline" },
        WarningMsg       = { fg = p.warning },
        Whitespace       = { fg = p.color700 },
        WildMenu         = { link = 'IncSearch' },
        -- WinSeparator     = { fg = p.color600, bg = p.color800 },
        WinSeparator     = { fg = p.color200, bg = "none" },
    }
    return hl
end

return M

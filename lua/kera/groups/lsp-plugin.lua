local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors

    local hl = {
        DiagnosticError               = { fg = p.error, gui = conf.plugins.lsp.diagnostic_error },            -- diagnostic error
        DiagnosticHint                = { fg = p.hint, bg = "NONE", gui = conf.plugins.lsp.diagnostic_hint }, -- diagnostic hint
        DiagnosticInfo                = { fg = p.constant, gui = conf.plugins.lsp.diagnostic_info },          -- diagnostic info
        DiagnosticUnderlineError      = { gui = "undercurl", sp = p.error },                                  -- undercurl for errors
        DiagnosticUnderlineHint       = { gui = "undercurl", sp = p.hint },                                   -- undercurl for hints
        DiagnosticUnderlineInfo       = { gui = "undercurl", sp = p.hint },                                   -- undercurl for info
        DiagnosticUnderlineWarn       = { gui = "undercurl", sp = p.delta },                                  -- undercurl for warnings
        DiagnosticVirtualTextError    = { fg = p.error, gui = conf.plugins.lsp.diagnostic_error },            -- virtual text for errors
        DiagnosticVirtualTextHint     = { fg = p.hint, gui = conf.plugins.lsp.diagnostic_hint },              -- virtual text for hints
        DiagnosticVirtualTextInfo     = { fg = p.info, gui = conf.plugins.lsp.diagnostic_info },              -- virtual text for info
        DiagnosticVirtualTextWarn     = { fg = p.warning },                                                   -- virtual text for warnings
        DiagnosticWarn                = { fg = p.warning, gui = conf.plugins.lsp.diagnostic_warn },           -- diagnostic warning
        LspCodeLens                   = { fg = p.comment, gui = conf.style.comments },                        -- code lens text
        LspCodeLensSeparator          = { fg = p.comment },                                                   -- code lens separator
        LspCxxHlGroupEnumConstant     = { fg = p.type },                                                      -- C++ enum constants
        LspCxxHlGroupMemberVariable   = { fg = p.type },                                                      -- C++ member variables
        LspCxxHlGroupNamespace        = { fg = p.func },                                                      -- C++ namespaces
        LspCxxHlSkippedRegion         = { fg = p.comment },                                                   -- C++ skipped regions
        LspCxxHlSkippedRegionBeginEnd = { fg = p.operator },                                                  -- C++ skipped region begin/end
        LspReferenceText              = { bg = p.color800 },
        LspReferenceRead              = { bg = p.color800 },
        LspReferenceWrite             = { bg = p.color800 },
        LspReferenceTarget            = { bg = p.color800 }
    }
    return hl
end

return M

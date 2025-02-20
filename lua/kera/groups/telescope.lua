local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors

    local hl = {
        TelescopeBorder            = { fg = p.color100 },                                    -- Border for Telescope
        TelescopeMatching          = { fg = p.primary, gui = conf.plugins.telescope.match }, -- Matching text in Telescope
        TelescopePromptPrefix      = { fg = p.color200 },                                    -- Prefix in Telescope prompt
        TelescopeSelection         = { fg = p.constant, bg = p.line },                       -- Selection in Telescope
        TelescopeSelectionCaret    = { fg = p.constant },                                    -- Caret in Telescope selection
        TelescopeResultsNormal     = { fg = p.fg },                                          -- Normal text in Telescope results
        TelescopeNormal            = { fg = p.color200 },
        -- TelescopeSelection         = { fg = p.color200, bg = p.color700 },
        TelescopeTitle             = { fg = p.color200 },
        TelescopePromptBorder      = { fg = p.color700 },
        TelescopePromptNormal      = { fg = p.color100 },
        TelescopePreviewTitle      = { fg = p.color100, bg = p.color700 },
        TelescopePromptTitle       = { fg = p.color100, bg = p.color700 },
        TelescopeResultsDiffAdd    = { fg = p.primary },
        TelescopeResultsDiffChange = { fg = p.color600 },
        TelescopeResultsDiffDelete = { fg = p.primary },
    }
    return hl
end
return M

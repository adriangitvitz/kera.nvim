local common_group = require('kera.groups.common')
local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors
    local common = common_group.get_colors(conf)

    local hl = {
        CmpGhostText          = { fg = p.color500 }, -- ghost text for completion
        CmpItemAbbr           = { fg = p.color200 },
        CmpItemAbbrDeprecated = { fg = p.color700, style = 'strikethrough' },
        CmpItemAbbrMatch      = { fg = p.color300 },
        CmpItemAbbrMatchFuzzy = { fg = p.color100 },
        CmpItemKind           = { fg = p.primary },
        CmpItemKindClass      = { fg = p.primary },
        CmpItemKindFunction   = { fg = p.primary },
        CmpItemKindInterface  = { fg = p.primary },
        CmpItemKindMethod     = { fg = p.primary },
        CmpItemKindSnippet    = { fg = p.primary },
        CmpItemKindVariable   = { fg = p.primary },
        CmpItemMenu           = common["Pmenu"],     -- menu for completion items
        CmpKind               = { fg = p.color400 }, -- kind of completion item
    }
    return hl
end

return M

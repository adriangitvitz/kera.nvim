local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors
    local hl = {
        DashboardShortCut = { fg = p.warning },
        DashboardHeader   = { fg = p.constant },
        DashboardCenter   = { fg = p.constant },
        DashboardFooter   = { fg = p.color400, bg = 'none', bold = true },
    }
    return hl
end

return M

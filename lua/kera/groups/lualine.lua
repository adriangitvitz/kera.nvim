local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors

    return {
        visual = {
            a = { fg = p.color800, bg = p.color100, gui = 'bold' },
            b = { fg = p.color100, bg = p.color600 },
        },
        replace = {
            a = { fg = p.color800, bg = p.color100, gui = 'bold' },
            b = { fg = p.color100, bg = p.color600 },
        },
        -- inactive = {
        --     a = { fg = colors.color9, bg = colors.color10, gui = "bold" },
        --     b = { fg = colors.color9, bg = colors.color10 },
        --     c = { fg = colors.color9, bg = colors.color10 },
        -- },
        normal = {
            a = { fg = p.color800, bg = p.color100, gui = 'bold' },
            b = { fg = p.color100, bg = p.color600 },
            c = { fg = p.color400, bg = p.none },
        },
        insert = {
            a = { fg = p.color800, bg = p.color100, gui = 'bold' },
            b = { fg = p.color100, bg = p.color600 },
        },
    }
end

return M

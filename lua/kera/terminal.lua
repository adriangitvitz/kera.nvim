local curr_internal_conf = require("kera.config.internal").current
local M = {}

M.set_highlights = function()
    local p = curr_internal_conf.colors

    vim.g.terminal_color_0 = p.color800
    vim.g.terminal_color_1 = p.primary
    vim.g.terminal_color_2 = p.color400
    vim.g.terminal_color_3 = p.warning
    vim.g.terminal_color_4 = p.color400
    vim.g.terminal_color_5 = p.primary
    vim.g.terminal_color_6 = p.color200
    vim.g.terminal_color_7 = p.color100
    vim.g.terminal_color_8 = p.color300
    vim.g.terminal_color_9 = p.color300
    vim.g.terminal_color_10 = p.color500
    vim.g.terminal_color_11 = p.color300
    vim.g.terminal_color_12 = p.primary
    vim.g.terminal_color_13 = p.placeholder
    vim.g.terminal_color_14 = p.color200
    vim.g.terminal_color_15 = p.color100
end

return M

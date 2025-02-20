local internal_conf = require("kera.config.internal")
local M = {}

---@param user_opts? KeraColorscheme.Config
M.setup = function(user_opts)
    if user_opts then internal_conf.set(user_opts) end
end

M.get_palette = function()
    local palette = {}
    for _, color in pairs(internal_conf.current.colors) do
        table.insert(palette, color)
    end
    return palette
end

M._colorscheme = function()
    vim.cmd("highlight clear")
    if vim.fn.has("syntax_on") then vim.cmd("syntax reset") end
    vim.g.colors_name = "kera"

    require("kera.highlights").set_highlights()
    require("kera.terminal").set_highlights()
end

return M

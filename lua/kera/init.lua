local utils = require 'kera.utils'

local M = {}

local config = {
    bold_vert_split = false,
    dark_variant = 'main',
    disable_background = true,
    disable_float_background = false,
    disable_italics = false,
    dim_nc_background = false,

    groups = {
        background = 'color800',
        panel = 'color800',
        border = 'color600',
        comment = 'color500',
        link = 'color200',
        punctuation = 'warning',

        error = 'error',
        hint = 'success',
        info = 'color200',
        warn = 'warning',

        git_add = 'color200',
        git_change = 'color600',
        git_delete = 'color200',
        git_dirty = 'color200',
        git_ignore = 'color600',
        git_merge = 'color200',
        git_rename = 'color200',
        git_stage = 'color200',
        git_text = 'color200',

        headings = {
            h1 = 'color400',
            h2 = 'color400',
            h3 = 'color400',
            h4 = 'color400',
            h5 = 'color400',
            h6 = 'color400',
        },
    },
    highlight_groups = {},
}

function M.setup(opts)
    opts = opts or {}

    if opts.groups and type(opts.groups.headings) == 'string' then
        opts.groups.headings = {
            h1 = opts.groups.headings,
            h2 = opts.groups.headings,
            h3 = opts.groups.headings,
            h4 = opts.groups.headings,
            h5 = opts.groups.headings,
            h6 = opts.groups.headings,
        }
    end

    config.user_variant = opts.dark_variant or nil
    config = vim.tbl_deep_extend('force', config, opts)


    config.groups = vim.tbl_deep_extend("force", {
        error = 'DiagnosticError',
        hint = 'DiagnosticHint',
        info = 'DiagnosticInfo',
        warn = 'DiagnosticWarn',
    }, config.groups or {})
end

-- function M.reload()
--     package.loaded['kera'] = nil
--     require('kera').colorscheme()
-- end
--
-- vim.api.nvim_create_user_command('KeraReload', function()
--     require('kera').reload()
-- end, {})

function M.colorscheme()
    if vim.g.colors_name then
        vim.cmd.hi('clear') -- Use proper clear command
    end

    vim.opt.termguicolors = true
    vim.g.colors_name = 'kera'

    local theme = require('kera.theme').get(config)

    for group, color in pairs(theme) do
        if config.highlight_groups[group] == nil then
            utils.highlight(group, color)
        end
    end

    for group, color in pairs(config.highlight_groups) do
        utils.highlight(group, color)
    end
end

return M

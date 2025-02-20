local curr_internal_conf = require("kera.config.internal").current
return {
    common = require("kera.groups.common").get_colors(curr_internal_conf),
    cmp = require("kera.groups.cmp").get_colors(curr_internal_conf),
    lsp_native = require("kera.groups.lsp-native").get_colors(curr_internal_conf),
    lsp_plugin = require("kera.groups.lsp-plugin").get_colors(curr_internal_conf),
    gitsigns = require("kera.groups.gitsigns").get_colors(curr_internal_conf),
    neotest = require("kera.groups.neotest").get_colors(curr_internal_conf),
    syntax = require("kera.groups.syntax").get_colors(curr_internal_conf),
    telescope = require("kera.groups.telescope").get_colors(curr_internal_conf),
    treesitter = require("kera.groups.treesitter").get_colors(curr_internal_conf),
    dashboard = require("kera.groups.dashboard").get_colors(curr_internal_conf),
}

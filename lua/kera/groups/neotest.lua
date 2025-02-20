local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors

    local hl = {
        NeotestTest        = { fg = p.comment },                                       -- Test status
        NeotestUnknown     = { fg = p.fg },                                            -- Unknown test status
        NeotestDir         = { fg = p.comment },                                       -- Directory for tests
        NeotestFile        = { fg = p.constant },                                      -- Test file
        NeotestPassed      = { fg = p.plus },                                          -- Passed tests
        NeotestFailed      = { fg = p.error },                                         -- Failed tests
        NeotestMarked      = { fg = p.delta },                                         -- Marked tests
        NeotestWatching    = { fg = p.warning },                                       -- Watching status for tests
        NeotestTarget      = { fg = p.hint },                                          -- Target test
        NeotestFocused     = { fg = p.delta, gui = conf.plugins.neotest.focused },     -- Focused test
        NeotestRunning     = { fg = p.hint },                                          -- Running tests
        NeotestAdapterName = { fg = p.hint, gui = conf.plugins.neotest.adapter_name }, -- Adapter name in tests
        NeotestNamespace   = { fg = p.parameter },                                     -- Namespace for tests
        NeotestSkipped     = { fg = p.warning },                                       -- Skipped tests
        NeotestIndent      = { fg = p.comment },                                       -- Indentation for tests
    }
    return hl
end

return M

local M = {}

---comment
---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors

    local hl = {
        Boolean        = { fg = p.primary, gui = conf.style.boolean },
        Character      = { fg = p.successuccess },
        Comment        = { fg = p.placeholderstr, gui = conf.style.comments },
        Conditional    = { fg = p.color200, gui = conf.style.conditionals },
        Constant       = { fg = p.color200 },
        Define         = { fg = p.comment },                                   -- preprocessor '#define'
        Delimiter      = { fg = p.color200 },
        Error          = { fg = p.error, gui = conf.style.error },             -- (preferred) any erroneous construct
        Exception      = { fg = p.info, gui = conf.style.keywords_exception }, -- 'try', 'catch', 'throw'
        Float          = { fg = p.color200, gui = conf.style.float },          -- float constants
        Function       = { fg = p.primary, gui = conf.style.functions },       -- functions
        Identifier     = { fg = p.color200, gui = conf.style.variables },      -- (preferred) any variable
        Include        = { fg = p.primary },                                   -- preprocessor '#include'
        Keyword        = { fg = p.primary },                                   -- any other keyword
        Label          = { fg = p.color200, gui = conf.style.keywords_label }, -- 'case', 'default', etc
        Macro          = { fg = p.constant },                                  -- macros
        Number         = { fg = p.primary, gui = conf.style.number },          -- number constant
        Operator       = { fg = p.color400, gui = conf.style.operators },      -- '+', '*', 'sizeof' etc
        PreCondit      = { fg = p.comment },                                   -- preprocessor conditionals '#if', '#endif' etc
        PreProc        = { fg = p.color200 },                                  -- (preferred) generic preprocessor
        Repeat         = { fg = p.color200, gui = conf.style.keywords_loop },  -- loop keywords: 'for', 'while' etc
        Special        = { fg = p.color200 },                                  -- (preferred) any special symbol
        SpecialChar    = { fg = p.keyword },                                   -- special character in a constant
        SpecialComment = { fg = p.color500 },                                  -- special things inside comments
        Statement      = { fg = p.color200 },                                  -- (preferred) any statement
        StorageClass   = { fg = p.constant },                                  -- 'static', 'volatile' etc
        String         = { fg = p.primary, gui = conf.style.strings },         -- string constants
        Structure      = { fg = p.constant },                                  -- 'struct', 'union', 'enum' etc
        Tag            = { fg = p.primary },                                   -- can use <C-]> on this
        Title          = { fg = p.color200 },
        Todo           = { fg = p.func, gui = conf.style.comments },           -- (preferred) 'TODO' keywords in comments
        Type           = { fg = p.color300 },                                  -- (preferred) 'int', 'long', 'char' etc
        Typedef        = { fg = p.constant },                                  -- 'typedef'
    }
    return hl
end

return M

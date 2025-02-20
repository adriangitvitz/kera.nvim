local syntax_group = require('kera.groups.syntax')
local M = {}

---@param conf KeraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
    local p = conf.colors
    local syntax = syntax_group.get_colors(conf)


    local hl = {
        ["@attribute"]             = syntax["Constant"],                                     -- attributes, like <decorators> in python
        ["@boolean"]               = syntax["Boolean"],                                      -- booleans
        ["@character"]             = syntax["String"],                                       -- character literals
        ["@character.special"]     = syntax["SpecialChar"],                                  -- special characters
        ["@constant"]              = syntax["Constant"],                                     -- constants
        ["@constant.builtin"]      = { fg = p.primary, gui = conf.style.builtin_constants }, -- constants defined by the language, like 'nil' in Lua
        ["@constant.macro"]        = syntax["Macro"],                                        -- constants defined by macros, like 'NULL' in C
        ["@constructor"]           = { fg = p.constant, gui = conf.style.functions },        -- constructor calls and definitions
        ["@constructor.lua"]       = { fg = p.type, gui = conf.style.functions },            -- constructor calls and definitions, `= { }` in Lua
        ["@diff.delta"]            = { fg = p.delta },                                       -- changed text (diff files)
        ["@diff.minus"]            = { fg = p.error },                                       -- removed text (diff files)
        ["@diff.plus"]             = { fg = p.plus },                                        -- added text (diff files)
        ["@function"]              = syntax["Function"],                                     -- functions
        ["@function.builtin"]      = { fg = p.func, gui = conf.style.builtin_functions },    -- built-in functions
        ["@function.call"]         = { fg = p.parameter },                                   -- function calls
        ["@function.macro"]        = syntax["Macro"],                                        -- macro-defined functions
        ["@function.method"]       = { fg = p.func },                                        -- methods
        ["@function.method.call"]  = { fg = p.type },                                        -- method calls
        ["@keyword"]               = { fg = p.keyword, gui = conf.style.keywords },          -- general keywords
        ["@keyword.conditional"]   = { fg = p.primary, gui = conf.style.conditionals },      -- conditional keywords
        ["@keyword.exception"]     = syntax["Exception"],                                    -- exception-related keywords
        ["@keyword.import"]        = syntax["PreProc"],                                      -- import-related keywords
        ["@keyword.operator"]      = { fg = p.color400, gui = conf.style.operators },        -- operator keywords (e.g., 'in' in Python)
        ["@keyword.return"]        = { fg = p.primary, gui = conf.style.keyword_return },    -- return keywords
        ['@keyword.function']      = { fg = p.color300 },
        ["@label"]                 = syntax["Label"],                                        -- labels
        ["@markup"]                = { fg = p.fg },                                          -- text in markup languages
        ["@markup.heading"]        = { fg = p.keyword, gui = conf.style.headings },          -- markdown titles
        ["@markup.italic"]         = { fg = p.fg, gui = "italic" },                          -- italic text
        ["@markup.link"]           = { fg = p.string },                                      -- text references, footnotes, citations, etc.
        ["@markup.link.uri"]       = { fg = p.string, gui = "underline" },                   -- URLs, links, emails
        ["@markup.list"]           = { fg = p.func },                                        -- lists
        ["@markup.list.checked"]   = { fg = p.func },                                        -- checked todo list items
        ["@markup.list.unchecked"] = { fg = p.func },                                        -- unchecked todo list items
        ["@markup.math"]           = { fg = p.string },                                      -- math environments, like `$$` in LaTeX
        ["@markup.quote.markdown"] = { fg = p.comment },                                     -- quotes with '>'
        ["@markup.raw"]            = { fg = p.constant },                                    -- inline code in markdown
        ["@markup.strikethrough"]  = { fg = p.comment, gui = "strikethrough" },              -- strikethrough text
        ["@markup.strong"]         = { fg = p.fg, gui = "bold" },                            -- bold text
        ["@markup.underline"]      = { fg = p.fg, gui = "underline" },                       -- underlined text
        ["@module"]                = syntax["Constant"],                                     -- modules and namespaces
        ["@number"]                = syntax["Number"],                                       -- all numbers
        ["@number.float"]          = syntax["Float"],                                        -- floats
        ["@operator"]              = syntax["Operator"],                                     -- operators like `+`
        ["@property"]              = { fg = p.property },                                    -- properties (similar to TSField)
        ["@punctuation.bracket"]   = { fg = p.fg },                                          -- brackets and parentheses
        ["@punctuation.delimiter"] = { fg = p.fg },                                          -- delimiters, like `; . , `
        ["@punctuation.special"]   = syntax["SpecialChar"],                                  -- special punctuation (e.g., `{}` in string interpolation)
        ["@string"]                = syntax["String"],                                       -- strings
        ["@string.documentation"]  = syntax["Comment"],                                      -- doc strings
        ["@string.escape"]         = syntax["SpecialChar"],                                  -- escape characters within strings
        ["@string.regexp"]         = syntax["SpecialChar"],                                  -- regular expressions
        ["@string.special.symbol"] = syntax["Identifier"],                                   -- special symbols in strings
        ["@string.special.url"]    = { fg = p.func },                                        -- URLs, links, emails
        ["@tag.attribute"]         = syntax["Identifier"],                                   -- tag attributes, like in HTML
        ["@tag.delimiter"]         = { fg = p.fg },                                          -- tag delimiters like `< >`
        ["@type"]                  = syntax["Type"],                                         -- types
        ["@type.builtin"]          = { fg = p.builtin, gui = conf.style.builtin_types },     -- built-in types
        ["@type.declaration"]      = { fg = p.constant },                                    -- type declarations
        ["@type.definition"]       = syntax["Typedef"],                                      -- typedefs
        ["@variable"]              = { fg = p.fg, gui = conf.style.variables },              -- any variable without another highlight
        ["@variable.builtin"]      = { fg = p.builtin, gui = conf.style.builtin_variables }, -- built-in variables like 'self' or 'this'
        ["@variable.member"]       = { fg = p.builtin },                                     -- fields
        ["@variable.parameter"]    = { fg = p.parameter },                                   -- function parameters
    }
    return hl
end

return M

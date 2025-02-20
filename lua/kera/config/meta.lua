---@alias CodeStyle "none"|"italic"|"bold"

---@class KeraColorscheme.style
---@field boolean? CodeStyle
---@field number? CodeStyle -- number constants
---@field float? CodeStyle -- floating point numbers
---@field error? CodeStyle -- any erroneous construct
---@field comments? CodeStyle
---@field conditionals? CodeStyle
---@field functions? CodeStyle -- function name
---@field headings? CodeStyle -- markdown headings
---@field operators? CodeStyle -- like "+"
---@field strings? CodeStyle
---@field variables? CodeStyle
---@field keywords? CodeStyle
---@field keyword_return? CodeStyle
---@field keywords_loop? CodeStyle -- "for", "while", etc
---@field keywords_label? CodeStyle -- "default", "case", etc
---@field keywords_exception? CodeStyle -- "try", "catch", etc
---@field builtin_constants? CodeStyle -- like "nil" in lua and golang
---@field builtin_functions? CodeStyle -- like "nil" in lua and golang
---@field builtin_types? CodeStyle -- like "nil" in lua and golang
---@field builtin_variables? CodeStyle -- like "this", "self"

---@class KeraColorscheme.plugins.cmp
---@field match? CodeStyle -- matching text for cmp plugins
---@field match_fuzzy? CodeStyle -- fuzzy matching text for cmp plugins

---@class KeraColorscheme.plugins.dashboard
---@field footer? CodeStyle

---@class KeraColorscheme.plugins.telescope
---@field match? CodeStyle -- matching text for telescope
---
---@class KeraColorscheme.plugins.neotest
---@field focused? CodeStyle -- style for the current focused test
---@field adapter_name? CodeStyle

---@class KeraColorscheme.plugins.lsp
---@field diagnostic_error? CodeStyle -- lsp diagnostic error text
---@field diagnostic_hint? CodeStyle -- lsp diagnostic hint text
---@field diagnostic_info? CodeStyle -- lsp diagnostic info text
---@field diagnostic_warn? CodeStyle -- lsp diagnostic warn text

---@class KeraColorscheme.plugins
---@field cmp? KeraColorscheme.plugins.cmp
---@field telescope? KeraColorscheme.plugins.telescope
---@field dashboard? KeraColorscheme.plugins.telescope
---@field lsp? KeraColorscheme.plugins.telescope

---@class KeraColorscheme.colors
---@field bg? string
---@field fg? string
---@field floatBorder? string
---@field line? string
---@field comment? string
---@field builtin? string
---@field func? string
---@field string? string
---@field number? string
---@field property? string
---@field constant? string
---@field parameter? string
---@field visual? string
---@field error? string
---@field warning? string
---@field hint? string
---@field operator? string
---@field keyword? string
---@field type? string
---@field search? string
---@field plus? string
---@field delta? string

---@class KeraColorscheme.Config
---@field transparent? boolean
---@field style? KeraColorscheme.style
---@field colors? KeraColorscheme.colors
---@field plugins? KeraColorscheme.plugins

---@type KeraColorscheme.Config | fun():KeraColorscheme.Config | nil
vim.g.kera_colorscheme = vim.g.kera_colorscheme

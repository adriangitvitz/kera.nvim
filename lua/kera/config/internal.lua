local M = {}

---@class KeraColorscheme.InternalConfig
local DEFAULT_SETTINGS = {
    ---@type boolean
    transparent = false,
    ---@class KeraColorscheme.InternalConfig.style
    style = {
        ---@type string
        boolean = "bold",
        ---@type string
        number = "none",
        ---@type string
        float = "none",
        ---@type string
        error = "bold",
        ---@type string
        comments = "italic",
        ---@type string
        conditionals = "none",
        ---@type string
        functions = "none",
        ---@type string
        headings = "bold",
        ---@type string
        operators = "none",
        ---@type string
        strings = "italic",
        ---@type string
        variables = "none",

        ---@type string
        keywords = "none",
        ---@type string
        keyword_return = "italic",
        ---@type string
        keywords_loop = "none",
        ---@type string
        keywords_label = "none",
        ---@type string
        keywords_exception = "none",

        builtin_constants = "bold",
        ---@type string
        builtin_functions = "none",
        ---@type string
        builtin_types = "bold",
        ---@type string
        builtin_variables = "none",
    },
    colors = {
        ---@type string
        color800 = '#202020',       -- Base (+25% luminance from original)
        ---@type string
        color700 = '#2A2A2A',       -- Elevated surfaces
        ---@type string
        color600 = '#343434',       -- Secondary backgrounds
        ---@type string
        color500 = '#3E3E3E',       -- Borders/separators
        ---@type string
        color200 = '#C8C8C8',       -- Primary text (prev #D8D8D8 → 22% darker)
        ---@type string
        color300 = '#909090',       -- Secondary text (ΔE 12 from #101421)
        ---@type string
        color400 = '#6A6A6A',       -- Disabled text
        ---@type string
        color100 = '#F0F0F0',       -- Highlight text
        ---@type string
        primary = '#D4AF37',        -- Muted gold (from #FFD700)
        ---@type string
        success = '#5E8975',        -- Desaturated green (from #70C040)
        ---@type string
        warning = '#C7A86D',        -- Earthy orange (from #FFB347)
        ---@type string
        error = '#B85C5C',          -- Muted red (from #FF5050)
        ---@type string
        info = '#4A89B5',           -- Soft azure (from #00A8FF)
        ---@type string
        builtin = '#D1B280',        -- Desaturated function calls
        ---@type string
        placeholderstr = '#A89D7B', -- Ochre for strings (ΔE 18 from bg)
        ---@type string
        placeholder = '#202020',
        ---@type string
        plus = "#8cb66d",
        ---@type string
        delta = "#f3be7c",
        ---@type string
        comment = '#6D6D8A',   -- Medium contrast blue-gray
        ---@type string
        constant = '#A0A8D0',  -- Desaturated lavender
        ---@type string
        keyword = '#7890B0',   -- Muted azure (reduced blue peak)
        ---@type string
        func = '#C09090',      -- Rose tint (better than pure red)
        ---@type string
        type = "#8CA5A8",      -- Desaturated teal (L*55 → 45, chroma -30%)
        ---@type string
        string = "#D4A88F",    -- Muted ochre (hue shift 25° → 35°, saturation -40%)
        ---@type string
        property = "#B0B0C8",  -- Low-chroma lavender (Munsell value 6.5)
        ---@type string
        fg = "#D8D8D8",        -- Primary text (L*85 → 82, 8.5:1 contrast ratio)
        ---@type string
        parameter = "#A88DA5", -- Earthy mauve (CIECAM02 J=50, C=15)
        ---@type string
        hint = "#6C8FA8",
        ---@type string
        operator = "#7A8798",
        ---@type string
        line = "#2D2D35",
        ---@type string
        none = 'none',
    },

    ---@class KeraColorscheme.InternalConfig.plugins
    plugins = {
        ---@class KeraColorscheme.InternalConfig.plugins.cmp
        cmp = {
            ---@type string
            match = "bold",
            ---@type string
            match_fuzzy = "bold",
        },
        ---@class KeraColorscheme.InternalConfig.plugins.dashboard
        dashboard = {
            ---@type string
            footer = "italic",
        },
        ---@class KeraColorscheme.InternalConfig.plugins.lsp
        lsp = {
            ---@type string
            diagnostic_error = "bold",
            ---@type string
            diagnostic_hint = "none",
            ---@type string
            diagnostic_info = "italic",
            ---@type string
            diagnostic_warn = "bold",
        },
        ---@class KeraColorscheme.InternalConfig.plugins.neotest
        neotest = {
            ---@type string
            focused = "bold",
            ---@type string
            adapter_name = "bold",
        },
        ---@class KeraColorscheme.InternalConfig.plugins.telescope
        telescope = {
            ---@type string
            match = "bold",
        },
    },
}

M._DEFAULT_SETTINGS = DEFAULT_SETTINGS
M.current = M._DEFAULT_SETTINGS

local opts = type(vim.g.kera_colorscheme) == "function" and vim.g.kera_colorscheme() or vim.g.kera_colorscheme() or {}

---@param user_opts KeraColorscheme.Config
M.set = function(user_opts)
    M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts or opts)
end

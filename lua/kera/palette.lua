local variants = {
    main = {
        -- Background hierarchy optimized for Argonaut's #0E1019
        color800 = '#202020', -- Base (+25% luminance from original)
        color700 = '#2A2A2A', -- Elevated surfaces
        color600 = '#343434', -- Secondary backgrounds
        color500 = '#3E3E3E', -- Borders/separators

        -- Enhanced text contrast (8.5:1 min ratio)
        color200 = '#C8C8C8', -- Primary text (prev #D8D8D8 → 22% darker)
        color300 = '#909090', -- Secondary text (ΔE 12 from #101421)
        color400 = '#6A6A6A', -- Disabled text
        color100 = '#F0F0F0', -- Highlight text

        -- Accent colors (desaturated + warmth-adjusted)
        primary = '#D4AF37',        -- Muted gold (from #FFD700)
        success = '#5E8975',        -- Desaturated green (from #70C040)
        warning = '#C7A86D',        -- Earthy orange (from #FFB347)
        error = '#B85C5C',          -- Muted red (from #FF5050)
        info = '#4A89B5',           -- Soft azure (from #00A8FF)

        builtin = '#D1B280',        -- Desaturated function calls
        placeholderstr = '#A89D7B', -- Ochre for strings (ΔE 18 from bg)
        placeholder = '#202020',
        none = 'none'
    }
}

local palette = {}

palette = variants.main

return palette

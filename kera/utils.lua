local utils = {}

local function parse_color(color)
    if not color then return nil end
    if color:lower() == 'none' then return 'NONE' end

    if color:find('^#%x%x%x%x%x%x$') then
        return color
    end

    local hex_color = vim.api.nvim_get_color_by_name(color)
    if hex_color ~= -1 then
        return string.format('#x06x', hex_color)
    end

    local ok, palette = pcall(require, 'kera.palette')
    if ok and palette[color] then
        return palette[color]
    end

    return nil
end

local function hex_to_rgb(hex_color)
    if not hex_color or hex_color == 'NONE' then
        return nil
    end

    local hex = hex_color:gsub('#', '')
    return {
        tonumber(hex:sub(1, 2), 16),
        tonumber(hex:sub(3, 4), 16),
        tonumber(hex:sub(5, 6), 16)
    }
end

utils.blend = function(fg, bg, alpha)
    alpha = math.min(math.max(alpha or 1, 0), 1) -- Clamp alpha

    local fg_rgb = hex_to_rgb(parse_color(fg))
        or { 0, 0, 0 } -- Fallback to black

    local bg_rgb = hex_to_rgb(parse_color(bg))
        or (vim.o.background == 'dark' and { 0, 0, 0 } or { 255, 255, 255 })

    local function blend_channel(fg_c, bg_c)
        local ret = (alpha * fg_c) + ((1 - alpha) * bg_c)
        return math.floor(ret + 0.5)
    end

    return string.format(
        '#%02X%02X%02X',
        blend_channel(fg_rgb[1], bg_rgb[1]),
        blend_channel(fg_rgb[2], bg_rgb[2]),
        blend_channel(fg_rgb[3], bg_rgb[3])
    )
end

utils.highlight = function(group, color)
    local hl = {}

    if color.link then
        vim.api.nvim_set_hl(0, group, { link = color.link })
        return
    end

    hl.fg = parse_color(color.fg)
    hl.bg = parse_color(color.bg)
    hl.sp = parse_color(color.sp)

    if color.style then
        local styles = {}
        for style in string.gmatch(color.style, '([^,]+)') do
            styles[style] = true
        end
        hl.style = styles
    end

    vim.api.nvim_set_hl(0, group, hl)
end

utils.highlight_groups = function(groups)
    for group, color in pairs(groups) do
        utils.highlight(group, color)
    end
end

return utils

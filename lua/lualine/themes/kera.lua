local palette = require('kera.palette')

local kera = {}

kera.normal = {
    a = { fg = palette.color800, bg = palette.color100, gui = 'bold' },
    b = { fg = palette.color100, bg = palette.color600 },
    c = { fg = palette.color400, bg = palette.none },
}

kera.insert = {
    a = { fg = palette.color800, bg = palette.color100, gui = 'bold' },
    b = { fg = palette.color100, bg = palette.color600 },
}

kera.visual = {
    a = { fg = palette.color800, bg = palette.color100, gui = 'bold' },
    b = { fg = palette.color100, bg = palette.color600 },
}

kera.replace = {
    a = { fg = palette.color800, bg = palette.color100, gui = 'bold' },
    b = { fg = palette.color100, bg = palette.color600 },
}

kera.command = {
    a = { fg = palette.color800, bg = palette.color100, gui = 'bold' },
    b = { fg = palette.color100, bg = palette.color600 },
}


return kera

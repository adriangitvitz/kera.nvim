```lua
return {
    "adriangitvitz/kera.nvim",
    branch = "tsoding",
    priority = 1000, -- Ensure proper loading order
    init = function()
        vim.opt.termguicolors = true
        -- Set global config before loading
    end,
    config = function()
        -- Apply after ensuring config is loaded
        vim.api.nvim_set_hl(0, "Comment", {
            fg = "#A89D7B", -- Adjusted for code comments
            italic = true
        })
        vim.cmd.colorscheme("kera")
    end
}
```

If using Ghostty use Argonaut theme

```
font-family = ""
font-family = "JetBrainsMonoNL Nerd Font Mono"
font-size = 18
font-thicken = true
background-opacity = 1
background-blur-radius = 20
theme = Argonaut
```

Ghostty theme

``` text
background = #181818
foreground = #ddeedd

cursor-color = #CCCAC2
selection-background = #4d4d4d
selection-foreground = #ffffff

palette = 0=#3d352a
palette = 1=#cd5c5c
palette = 2=#86af80
palette = 3=#e8ae5b
palette = 4=#6495ed
palette = 5=#deb887
palette = 6=#b0c4de
palette = 7=#bbaa99
palette = 8=#554444
palette = 9=#cc5533
palette = 10=#88aa22
palette = 11=#ffa75d
palette = 12=#87ceeb
palette = 13=#996600
palette = 14=#b0c4de
palette = 15=#ddccbb
```

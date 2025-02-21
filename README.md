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

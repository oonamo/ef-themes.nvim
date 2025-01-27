<h1 align="center">Ef-Themes</h1>
<p align="center">
    Colourful and legible themes for Neovim,
    Ported from <a href="https://github.com/protesilaos/ef-themes" target="_blank">Ef (εὖ) themes for GNU Emacs</a>
</p>

<p align="center">
    <img src="https://private-user-images.githubusercontent.com/43306454/406818537-ef09fa7c-dd9b-4960-925e-5b2c2708aa87.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Mzc5NTk1MTksIm5iZiI6MTczNzk1OTIxOSwicGF0aCI6Ii80MzMwNjQ1NC80MDY4MTg1MzctZWYwOWZhN2MtZGQ5Yi00OTYwLTkyNWUtNWIyYzI3MDhhYTg3LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAxMjclMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMTI3VDA2MjY1OVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWUzMjMwODdhZDg0ZWY4MmI4ZWNlNzZlYTgwNmRjYmJkYTZjYmRiMjA0ODNhMjQ1NWQ5ODcwNmM4YWE1YmVjYmUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.u1pH9xL3pI55S0SdZtx-A0ZPAbrXHmg4s7ykG-friCU"/>
</p>

# Showcase 

<details>
<summary>ef-dream</summary>
<img src="https://private-user-images.githubusercontent.com/43306454/406818778-41719929-9096-4fa5-882f-2b06d12cb128.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Mzc5NTk5MTMsIm5iZiI6MTczNzk1OTYxMywicGF0aCI6Ii80MzMwNjQ1NC80MDY4MTg3NzgtNDE3MTk5MjktOTA5Ni00ZmE1LTg4MmYtMmIwNmQxMmNiMTI4LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAxMjclMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMTI3VDA2MzMzM1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWI5MGU3MDgzOTUxNGViMzMwMjI4ZTFkYTFlMjE1Njg4Y2ZhZTlmMzlhYTE3OTJmOGY1Njc1MWY5ODMyMWFkNjAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.osutDmchn0tWTkCmcZ1VBjgP24yN6hnpL-ANjUFNFtw"/>
</details>

**[See the rest](https://github.com/oonamo/ef-themes.nvim/issues/1)**

# Features
- Fast loading with caching on a per-need basis
- Configurable with templates

# Requirements
- Neovim >= 0.8
- True color support

> [!NOTE]
> The default MacOS terminal **does not** support `truecolor`

# Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "oonamo/ef-themes.nvim" }
```

[mini.deps](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-deps.md)
```lua
add("oonamo/ef-themes.nvim")
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use { "oonamo/ef-themes.nvim" }
```

[vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'oonamo/ef-themes.nvim'
```


# Usage
```vim
colorscheme ef-dream " ef-reverie, ef-owl etc..
```

```lua
vim.cmd.colorscheme("ef-dream")
```

# Configuration
```lua
require("ef-themes").setup({
  light = "ef-spring", -- Color to default to when background is light
  dark = "ef-winter", -- Color to default to when background is dark

  -- modules are the type of highlights to load
  -- remove one to not use its highlights
  modules = {
    "base", -- Recommended. Holds essential highlights for neovim
    "blink", -- for blink.cmp
    "mini", -- for mini.nvim
    "treesitter", -- for treesitter
    -- "semantic-tokens", -- Currently not recommended to enable
    -- "fzf", -- for fzf.lua
  },

  --- Override any color from the ef-theme
  ---@param colors Ef-Theme
  ---@param name string
  on_colors = function(colors, name) end, -- TODO: Unimplemented

  --- Override specific highlights
  ---@param highlights table
  ---@param colors Ef-Theme
  on_highlights = function(highlights, colors, name) end, -- TODO: Unimplemented

  options = {
    compile = true, -- Whether to compile the colorscheme
    compile_path = vim.fn.stdpath("cache") .. "/ef-themes", -- folder to compile to
  },
})

vim.cmd.colorscheme("ef-theme") -- To use the default colorscheme defined above
-- Or choose a specific theme
-- vim.cmd.colorscheme("ef-dream")
```


# Customizing
## Get Ef-theme Palette
```lua
local ef_dream = require("ef-themes.themes").get_palette("ef-dream")
local ef_rosa = require("ef-themes.themes").get_palette("ef-rosa")
```

## Overwriting Colors
```lua
require("ef-themes").setup({
        on_colors = function(colors, name)
            colors.yellow = colors.yellow_faint
            colors.bg = "#000000"
        end,
})
```
## Overwriting Highlights
```lua
require("ef-themes").setup({
        on_highlights = function(hls, palette, name)
            if name == "ef-spring" then
                hls.FloatBorder = { fg = palette.fg_main, bg = palette.bg_alt }
            end
        end,
})
```

<!-- extras:start -->
- [Fzf](https://github.com/junegunn/fzf) ([fzf](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/fzf))
- [Ghostty](https://github.com/ghostty-org/ghostty) ([ghostty](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/ghostty))
- [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) ([kitty](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/kitty))
- [Lazygit](https://github.com/jesseduffield/lazygit) ([lazygit](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/lazygit))
- [Vimium](https://vimium.github.io/) ([vimium](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/vimium))
- [WezTerm](https://wezfurlong.org/wezterm/config/files.html) ([wezterm](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/wezterm))
- [Windows Terminal](https://aka.ms/terminal-documentation) ([windows_terminal](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/windows_terminal))
- [Yazi](https://github.com/sxyazi/yazi) ([yazi](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/yazi))

<!-- extras:end -->

# Acknowledgments
- [protesilaos](https://github.com/protesilaos/ef-themes) (Original Creator)
- [tokyonight](https://github.com/folke/tokyonight.nvim/tree/main) (groups/config/structure/utils)
- [nightfox](https://github.com/EdenEast/nightfox.nvim) (compiling)

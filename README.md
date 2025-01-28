<h1 align="center">Ef-Themes</h1>
<p align="center">
    Colourful and legible themes for Neovim,
    Ported from <a href="https://github.com/protesilaos/ef-themes" target="_blank">Ef (εὖ) themes for GNU Emacs</a>
</p>

![ef-themes-preview](https://github.com/user-attachments/assets/82ddbecf-1ec2-41e3-bf4a-dce0ef78671f)


# Showcase 

<!-- DarkThemes:start -->
<details>
<summary> Dark Themes</summary>

<details>
<summary>ef-autumn</summary>

</details>

<details>

<summary>ef-bio</summary>

</details>
<details>

<summary>ef-cherie</summary>

</details>
<details>

<summary>ef-dark</summary>

</details>
<details>

<summary>ef-deuteranopia-dark</summary>

</details>
<details>

<summary>ef-dream</summary>

</details>
<details>

<summary>ef-duo-dark</summary>

</details>
<details>

<summary>ef-elea-dark</summary>

</details>
<details>

<summary>ef-maris-dark</summary>

</details>
<details>

<summary>ef-melissa-dark</summary>

</details>
<details>

<summary>ef-night</summary>

</details>
<details>

<summary>ef-owl</summary>

</details>
<details>

<summary>ef-rosa</summary>

</details>
<details>

<summary>ef-symbiosis</summary>

</details>
<details>

<summary>ef-trio-dark</summary>

</details>
<details>

<summary>ef-tritanopia-dark</summary>

</details>
<details>

<summary>ef-winter</summary>

</details>

</details>
</details>
</details>
<!-- DarkThemes:end -->


<!-- DarkThemes:start -->
<details>
<summary>Light Themes</summary>

<details>

<summary>ef-cyprus</summary>

</details>
<details>

<summary>ef-day</summary>

</details>
<details>

<summary>ef-deuteranopia-light</summary>

</details>
<details>

<summary>ef-duo-light</summary>

</details>
<details>

<summary>ef-eagle</summary>

</details>
<details>

<summary>ef-elea-light</summary>

</details>
<details>

<summary>ef-frost</summary>

</details>
<details>

<summary>ef-kassio</summary>

</details>
<details>

<summary>ef-light</summary>

</details>
<details>

<summary>ef-maris-light</summary>

</details>
<details>

<summary>ef-melissa-light</summary>

</details>
<details>

<summary>ef-reverie</summary>

</details>
<details>

<summary>ef-spring</summary>

</details>
<details>

<summary>ef-summer</summary>

</details>
<details>

<summary>ef-trio-light</summary>

</details>
<details>

<summary>ef-tritanopia-light</summary>

</details>


</details>
<!-- DarkThemes:end -->

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


# Extras
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

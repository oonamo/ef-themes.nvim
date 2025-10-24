local M = {}

function M.template()
	return [=[
# Modus Themes for Alacritty
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/alacritty.lua

# Default colors
[colors.primary]
background   = '${bg_main}'
foreground   = '${fg_main}'

# Normal colors
[colors.normal]
black     = '${bg_main}'
red       = '${red}'
green     = '${green}'
yellow    = '${yellow}'
blue      = '${blue}'
magenta   = '${magenta}'
cyan      = '${cyan}'
white     = '${fg_main}'

# Bright colors
[colors.bright]
black     = '${bg_dim}'
red       = '${bg_red_intense}'
green     = '${bg_green_intense}'
yellow    = '${bg_yellow_intense}'
blue      = '${bg_blue_intense}'
magenta   = '${bg_magenta_intense}'
cyan      = '${bg_cyan_intense}'
white     = '${fg_dim}'

[[colors.indexed_colors]]
index     = 16
color     = '${yellow_warmer}'

[[colors.indexed_colors]]
index     = 17
color     = '${red_faint}'
]=]
end

return M

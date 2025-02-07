local M = {}

function M.template()
  return [[
# vim:ft=kitty

## name: ${_name}
## license: GNU
## author: Onam Hernandez


background ${bg_main}
foreground ${fg_main}
selection_background ${bg_hl_line}
selection_foreground ${fg_main}
url_color ${green_cooler}
cursor ${fg_main}
cursor_text_color ${bg_main}

# Tabs
active_tab_background ${fg_alt}
active_tab_foreground ${bg_tab_current}
inactive_tab_background ${bg_tab_bar}
inactive_tab_foreground ${fg_alt}

# Windows
active_border_color ${border}
inactive_border_color ${bg_dim}

# normal
color0 ${fg_term_black}
color1 ${fg_term_red}
color2 ${fg_term_green}
color3 ${fg_term_yellow}
color4 ${fg_term_blue}
color5 ${fg_term_magenta}
color6 ${fg_term_cyan}
color7 ${fg_term_white}

# bright
color8  ${fg_term_black_bright}
color9  ${fg_term_red_bright}
color10 ${fg_term_green_bright}
color11 ${fg_term_yellow_bright}
color12 ${fg_term_blue_bright}
color13 ${fg_term_magenta_bright}
color14 ${fg_term_cyan_bright}
color15 ${fg_term_white_bright}

# extended colors
color16 ${yellow_cooler}
color17 ${red_cooler}
  ]]
end

return M

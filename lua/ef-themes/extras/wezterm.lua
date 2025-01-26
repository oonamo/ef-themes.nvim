local M = {}

function M.template()
  return [[
[colors]
foreground = "${fg_main}"
background = "${bg_main}"
cursor_bg = "${cursor}"
cursor_border = "${cursor}"
cursor_fg = "${bg_main}"
selection_bg = "${bg_region}"
selection_fg = "${fg_main}"
split = "${border}"
compose_cursor = "${yellow}"
scrollbar_thumb = "${bg_hl_line}"

ansi = ["${fg_term_black}", "${fg_term_red}", "${fg_term_green}", "${fg_term_yellow}", "${fg_term_blue}", "${fg_term_magenta}", "${fg_term_cyan}", "${fg_term_white}"]
brights = ["${fg_term_black_bright}", "${fg_term_red_bright}", "${fg_term_green_bright}", "${fg_term_yellow_bright}", "${fg_term_blue_bright}", "${fg_term_magenta_bright}", "${fg_term_cyan_bright}", "${fg_term_white_bright}"]

[colors.tab_bar]
inactive_tab_edge = "${bg_tab_other}"
background = "${bg_main}"

[colors.tab_bar.active_tab]
fg_color = "${bg_tab_current}"
bg_color = "${fg_alt}"

[colors.tab_bar.inactive_tab]
fg_color = "${fg_alt}"
bg_color = "${bg_tab_bar}"
intensity = "Bold"

[colors.tab_bar.inactive_tab_hover]
fg_color = "${fg_alt}"
bg_color = "${bg_hl_line}"
intensity = "Bold"

[colors.tab_bar.new_tab_hover]
fg_color = "${green}"
bg_color = "${bg_main}"
intensity = "Bold"

[colors.tab_bar.new_tab]
fg_color = "${blue}"
bg_color = "${bg_main}"

[metadata]
aliases = []
author = "prot"
name = "${_name}"]]
end

return M

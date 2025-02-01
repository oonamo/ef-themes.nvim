local tint = vim.deepcopy(require("ef-themes.themes.custom.ef-tint"))

tint.palette.bg_main = "#292d3e"
tint.palette.bg_active = "bg-main"

tint.palette.fg_main = "#eeffff"

tint.palette.fg_mode_line = "#ffffff"
tint.palette.bg_mode_line = "#232635"

tint.palette.bg_tab_other = "#242837"
tint.palette.bg_tab_current = "bg-main"
tint.palette.bg_tab_other = "#242837"
tint.palette.prompt = "#c792ea"
tint.palette.bg_hover_secondary = "#676e95"
tint.palette.bg_completion = "#2f447f"
tint.palette.bg_region = "#3c435e"

tint.palette.accent_1 = "#79a8ff"

tint.palette.keyword = "#89ddff"
tint.palette.builtin = "#82aaff"
tint.palette.comment = "#676e95"
tint.palette.string = "#c3e88d"
tint.palette.fnname = "#82aaff"
tint.palette.type = "#c792ea"
tint.palette.variable = "#ffcb6b"
tint.palette.docstring = "#8d92af"
tint.palette.constant = "#f78c6c"

return tint

local M = {}

function M.template()
  return [[
[manager]
# NOTE: can combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${fg_dim}", italic = true }

# Hovered
hovered         = { bg = "${bg_hl_line}" }
preview_hovered = { bg = "${bg_hl_line}" }

# Find
find_keyword  = { fg = "${bg_dim}", bg = "${bg_search_match}", bold = true }
find_position = { fg = "${bg_dim}", bg = "${bg_search_lazy}", bold = true }

# Marker
marker_copied   = { fg = "${green}", bg = "${green}" }
marker_cut      = { fg = "${red}", bg = "${red}" }
marker_marked   = { fg = "${magenta}", bg = "${magenta}" }
marker_selected = { fg = "${blue}", bg = "${blue}" }

# Tab
tab_active   = { fg = "${fg_main}", bg = "${bg_tab_bar}" }
tab_inactive = { fg = "${fg_dim}", bg = "${bg_tab_other}" }
tab_width    = 1

# Count
count_copied   = { fg = "${fg_main}", bg = "${green_faint}" }
count_cut      = { fg = "${fg_main}", bg = "${red_warmer}" }
count_selected = { fg = "${fg_main}", bg = "${blue}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border}" }

[mode]
normal_main = { fg = "${fg_term_black}", bg = "${blue}", bold = true }
normal_alt  = { fg = "${blue}", bg = "${fg_dim}" }

select_main = { fg = "${fg_term_black}", bg = "${magenta}", bold = true }
select_alt  = { fg = "${magenta}", bg = "${fg_dim}" }

unset_main  = { fg = "${fg_term_black}", bg = "${magenta_cooler}", bold = true }
unset_alt   = { fg = "${magenta_cooler}", bg = "${fg_dim}" }

[status]
separator_open    = ""
separator_close   = ""
# separator_style = { fg = "${fg_dim}", bg = "${fg_dim}" }

# Progress
progress_label  = { fg = "${fg_dim}", bold = true }
progress_normal = { fg = "${bg_main}" }
progress_error  = { fg = "${err}" }

# Permissions
perm_type  = { fg = "${blue}" }
perm_read  = { fg = "${yellow}" }
perm_write = { fg = "${red}" }
perm_exec  = { fg = "${green}" }
perm_sep   = { fg = "${fg_term_black}" }

[pick]
border   = { fg = "${border}" }
active   = { fg = "${fg_main}",  bg = "${bg_hl_line}" }
inactive = { fg = "${fg_alt}" }

# Input
[input]
border   = { fg = "${blue_faint}" }
title    = { fg = "${blue_faint}" }
value    = { fg = "${magenta_cooler}" }
selected = { bg = "${bg_hl_line}" }

# Completion
[completion]
border   = { fg = "${blue_faint}" }
active   = { fg = "${fg_main}", bg = "${bg_hl_line}" }
inactive = { fg = "${fg_main}" }

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border}" }
title   = { fg = "${border}" }
hovered = { fg = "${fg_main}", bg="${bg_hl_line}" }

# Which
[which]
cols            = 3
mask            = { bg = "${bg_dim}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = " ➜ "
separator_style = { fg = "${comment}" }

# Confirm
[confirm]
border  = { fg = "${blue_faint}" }
title   = { fg = "${border}" }
content = {}
list    = {}
btn_yes = { bg = "${bg_hl_line}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border}" }
title   = { fg = "${border}" }

# Notify
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${err}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
on      = { fg = "${green}" }
run     = { fg = "${magenta}" }
hovered = { bg = "${bg_hl_line}" }
footer  = { fg = "${fg_main}", bg = "${bg_main}" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${magenta}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${red}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${blue}" }
]
    ]]
end

return M

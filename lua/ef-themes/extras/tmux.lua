local M = {}

function M.template()
	return [[
# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=${bg_mode_line},fg=${fg_mode_line}
set-option -g status-left '#[bg=${bg_mode_line},fg=${fg_mode_line},bold]#{?client_prefix,,  tmux  }#[bg=${accent_0},fg=${bg_dim},bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=${accent_0},fg=${bg_dim}] #I:#W#{?window_zoomed_flag,  , }'
]]
end

return M

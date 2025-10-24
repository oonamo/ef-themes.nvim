# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#90e8b0,fg=#243228
set-option -g status-left '#[bg=#90e8b0,fg=#243228,bold]#{?client_prefix,,  tmux  }#[bg=#1a870f,fg=#e8f0f0,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#1a870f,fg=#e8f0f0] #I:#W#{?window_zoomed_flag,  , }'

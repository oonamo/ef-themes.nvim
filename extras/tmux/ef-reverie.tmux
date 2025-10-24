# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#d1b0df,fg=#523044
set-option -g status-left '#[bg=#d1b0df,fg=#523044,bold]#{?client_prefix,,  tmux  }#[bg=#87591f,fg=#e5d6d4,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#87591f,fg=#e5d6d4] #I:#W#{?window_zoomed_flag,  , }'

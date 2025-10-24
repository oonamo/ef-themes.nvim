# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#cfab80,fg=#2f1005
set-option -g status-left '#[bg=#cfab80,fg=#2f1005,bold]#{?client_prefix,,  tmux  }#[bg=#882000,fg=#e4dbc0,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#882000,fg=#e4dbc0] #I:#W#{?window_zoomed_flag,  , }'

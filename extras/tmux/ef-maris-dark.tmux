# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#2f527b,fg=#ecf0ff
set-option -g status-left '#[bg=#2f527b,fg=#ecf0ff,bold]#{?client_prefix,,  tmux  }#[bg=#12b4ff,fg=#1d2c39,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#12b4ff,fg=#1d2c39] #I:#W#{?window_zoomed_flag,  , }'

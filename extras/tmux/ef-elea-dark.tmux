# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#35605d,fg=#ecf0ff
set-option -g status-left '#[bg=#35605d,fg=#ecf0ff,bold]#{?client_prefix,,  tmux  }#[bg=#50cf89,fg=#303332,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#50cf89,fg=#303332] #I:#W#{?window_zoomed_flag,  , }'

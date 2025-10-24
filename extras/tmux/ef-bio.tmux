# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#00552f,fg=#d0ffe0
set-option -g status-left '#[bg=#00552f,fg=#d0ffe0,bold]#{?client_prefix,,  tmux  }#[bg=#00c089,fg=#222522,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#00c089,fg=#222522] #I:#W#{?window_zoomed_flag,  , }'

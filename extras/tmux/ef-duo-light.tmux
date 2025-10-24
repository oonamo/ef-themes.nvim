# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#f8cf8f,fg=#111133
set-option -g status-left '#[bg=#f8cf8f,fg=#111133,bold]#{?client_prefix,,  tmux  }#[bg=#4250ef,fg=#f6ece8,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#4250ef,fg=#f6ece8] #I:#W#{?window_zoomed_flag,  , }'

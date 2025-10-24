# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#e9a0a0,fg=#40231f
set-option -g status-left '#[bg=#e9a0a0,fg=#40231f,bold]#{?client_prefix,,  tmux  }#[bg=#007000,fg=#f0d8cf,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#007000,fg=#f0d8cf] #I:#W#{?window_zoomed_flag,  , }'

# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#484d67,fg=#ffffff
set-option -g status-left '#[bg=#484d67,fg=#ffffff,bold]#{?client_prefix,,  tmux  }#[bg=#00bcff,fg=#1d2235,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#00bcff,fg=#1d2235] #I:#W#{?window_zoomed_flag,  , }'

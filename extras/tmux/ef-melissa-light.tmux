# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#f3cf72,fg=#403328
set-option -g status-left '#[bg=#f3cf72,fg=#403328,bold]#{?client_prefix,,  tmux  }#[bg=#ba5205,fg=#f5e9cb,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#ba5205,fg=#f5e9cb] #I:#W#{?window_zoomed_flag,  , }'

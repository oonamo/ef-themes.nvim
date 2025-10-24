# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#2a2a75,fg=#e0e0ff
set-option -g status-left '#[bg=#2a2a75,fg=#e0e0ff,bold]#{?client_prefix,,  tmux  }#[bg=#3f95f6,fg=#1a1a1a,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#3f95f6,fg=#1a1a1a] #I:#W#{?window_zoomed_flag,  , }'

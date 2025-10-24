# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#352487,fg=#dedeff
set-option -g status-left '#[bg=#352487,fg=#dedeff,bold]#{?client_prefix,,  tmux  }#[bg=#6f80ff,fg=#1d1a26,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#6f80ff,fg=#1d1a26] #I:#W#{?window_zoomed_flag,  , }'

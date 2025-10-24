# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#704f00,fg=#f8efd8
set-option -g status-left '#[bg=#704f00,fg=#f8efd8,bold]#{?client_prefix,,  tmux  }#[bg=#ffa21f,fg=#483426,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#ffa21f,fg=#483426] #I:#W#{?window_zoomed_flag,  , }'

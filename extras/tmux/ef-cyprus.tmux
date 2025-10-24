# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#c0df6f,fg=#142010
set-option -g status-left '#[bg=#c0df6f,fg=#142010,bold]#{?client_prefix,,  tmux  }#[bg=#006f00,fg=#f0ece0,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#006f00,fg=#f0ece0] #I:#W#{?window_zoomed_flag,  , }'

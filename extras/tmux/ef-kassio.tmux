# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#e0bfba,fg=#151515
set-option -g status-left '#[bg=#e0bfba,fg=#151515,bold]#{?client_prefix,,  tmux  }#[bg=#3c3bbe,fg=#efe7e7,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#3c3bbe,fg=#efe7e7] #I:#W#{?window_zoomed_flag,  , }'

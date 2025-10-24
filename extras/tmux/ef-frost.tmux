# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#9ad0ff,fg=#051524
set-option -g status-left '#[bg=#9ad0ff,fg=#051524,bold]#{?client_prefix,,  tmux  }#[bg=#4244ef,fg=#eaefef,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#4244ef,fg=#eaefef] #I:#W#{?window_zoomed_flag,  , }'

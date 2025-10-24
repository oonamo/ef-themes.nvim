# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#b7c7ff,fg=#151515
set-option -g status-left '#[bg=#b7c7ff,fg=#151515,bold]#{?client_prefix,,  tmux  }#[bg=#4250ef,fg=#efefef,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#4250ef,fg=#efefef] #I:#W#{?window_zoomed_flag,  , }'

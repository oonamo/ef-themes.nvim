# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#5b637e,fg=#dadfe5
set-option -g status-left '#[bg=#5b637e,fg=#dadfe5,bold]#{?client_prefix,,  tmux  }#[bg=#7ac0b9,fg=#373b3d,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#7ac0b9,fg=#373b3d] #I:#W#{?window_zoomed_flag,  , }'

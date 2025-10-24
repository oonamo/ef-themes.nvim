# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#003a7f,fg=#ceeeff
set-option -g status-left '#[bg=#003a7f,fg=#ceeeff,bold]#{?client_prefix,,  tmux  }#[bg=#029fff,fg=#1a202b,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#029fff,fg=#1a202b] #I:#W#{?window_zoomed_flag,  , }'

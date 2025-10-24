# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#5f1f5f,fg=#dedeff
set-option -g status-left '#[bg=#5f1f5f,fg=#dedeff,bold]#{?client_prefix,,  tmux  }#[bg=#af85ea,fg=#1d202f,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#af85ea,fg=#1d202f] #I:#W#{?window_zoomed_flag,  , }'

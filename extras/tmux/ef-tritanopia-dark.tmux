# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#671822,fg=#ffffff
set-option -g status-left '#[bg=#671822,fg=#ffffff,bold]#{?client_prefix,,  tmux  }#[bg=#3fafcf,fg=#282026,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#3fafcf,fg=#282026] #I:#W#{?window_zoomed_flag,  , }'

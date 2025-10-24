# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#a5c67f,fg=#142810
set-option -g status-left '#[bg=#a5c67f,fg=#142810,bold]#{?client_prefix,,  tmux  }#[bg=#007047,fg=#e3e9d6,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#007047,fg=#e3e9d6] #I:#W#{?window_zoomed_flag,  , }'

# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#99c7ff,fg=#0a0a1f
set-option -g status-left '#[bg=#99c7ff,fg=#0a0a1f,bold]#{?client_prefix,,  tmux  }#[bg=#065fff,fg=#e8e8ea,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#065fff,fg=#e8e8ea] #I:#W#{?window_zoomed_flag,  , }'

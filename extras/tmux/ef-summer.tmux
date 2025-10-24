# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#ffa4dc,fg=#341f58
set-option -g status-left '#[bg=#ffa4dc,fg=#341f58,bold]#{?client_prefix,,  tmux  }#[bg=#8e44f3,fg=#f2e4ea,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#8e44f3,fg=#f2e4ea] #I:#W#{?window_zoomed_flag,  , }'

# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#814558,fg=#e8e5e7
set-option -g status-left '#[bg=#814558,fg=#e8e5e7,bold]#{?client_prefix,,  tmux  }#[bg=#8ad05a,fg=#432e32,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#8ad05a,fg=#432e32] #I:#W#{?window_zoomed_flag,  , }'

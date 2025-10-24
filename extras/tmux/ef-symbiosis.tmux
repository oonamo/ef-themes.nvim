# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#583435,fg=#ffe5f0
set-option -g status-left '#[bg=#583435,fg=#ffe5f0,bold]#{?client_prefix,,  tmux  }#[bg=#4fbaef,fg=#221920,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#4fbaef,fg=#221920] #I:#W#{?window_zoomed_flag,  , }'

# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#ff99aa,fg=#1a0a0f
set-option -g status-left '#[bg=#ff99aa,fg=#1a0a0f,bold]#{?client_prefix,,  tmux  }#[bg=#2070af,fg=#efecec,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#2070af,fg=#efecec] #I:#W#{?window_zoomed_flag,  , }'

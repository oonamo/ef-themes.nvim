# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#6a294f,fg=#ffdfdf
set-option -g status-left '#[bg=#6a294f,fg=#ffdfdf,bold]#{?client_prefix,,  tmux  }#[bg=#e772df,fg=#2a2228,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#e772df,fg=#2a2228] #I:#W#{?window_zoomed_flag,  , }'

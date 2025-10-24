# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#771a4f,fg=#ffcfdf
set-option -g status-left '#[bg=#771a4f,fg=#ffcfdf,bold]#{?client_prefix,,  tmux  }#[bg=#f470df,fg=#291f26,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#f470df,fg=#291f26] #I:#W#{?window_zoomed_flag,  , }'

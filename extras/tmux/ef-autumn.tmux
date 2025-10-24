# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#692a12,fg=#feeeca
set-option -g status-left '#[bg=#692a12,fg=#feeeca,bold]#{?client_prefix,,  tmux  }#[bg=#00b066,fg=#26211d,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#00b066,fg=#26211d] #I:#W#{?window_zoomed_flag,  , }'

# Modus Themes for Tmux
# Auto generated with https://github.com/oonamo/ef-themes.nvim/blob/master/lua/ef-themes/extras/tmux.lua

set-option -g status-position "bottom"
set-option -g status-style bg=#a0c2ef,fg=#142810
set-option -g status-left '#[bg=#a0c2ef,fg=#142810,bold]#{?client_prefix,,  tmux  }#[bg=#003faf,fg=#e0e7ef,bold]#{?client_prefix,  tmux  ,}'
set-option -g status-right '#S'
set-option -g window-status-format ' #I:#W '
set-option -g window-status-current-format '#[bg=#003faf,fg=#e0e7ef] #I:#W#{?window_zoomed_flag,  , }'

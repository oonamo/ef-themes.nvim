export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#cfe6ff,bg:#ebe7f1,spinner:#705ae3,hl:#6060d0 \
--color=fg:#4f3363,header:#375cd6,info:#786e74,pointer:#705ae3 \
--color=marker:#705ae3,fg+:#cfe6ff,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#cfe6ff,bg:#ebe7f1,spinner:#705ae3,hl:#6060d0
# --color=fg:#4f3363,header:#375cd6,info:#786e74,pointer:#705ae3
# --color=marker:#705ae3,fg+:#cfe6ff,prompt:#6060d0,hl+:#6060d0
# "@
  
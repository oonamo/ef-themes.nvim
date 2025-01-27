export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#ffd6e5,bg:#f2e4ea,spinner:#8e44f3,hl:#6060d0 \
--color=fg:#4f4073,header:#cb1aaa,info:#786e74,pointer:#8e44f3 \
--color=marker:#8e44f3,fg+:#ffd6e5,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#ffd6e5,bg:#f2e4ea,spinner:#8e44f3,hl:#6060d0
# --color=fg:#4f4073,header:#cb1aaa,info:#786e74,pointer:#8e44f3
# --color=marker:#8e44f3,fg+:#ffd6e5,prompt:#6060d0,hl+:#6060d0
# "@
  
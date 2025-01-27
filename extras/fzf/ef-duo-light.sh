export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f9e8c0,bg:#f6ece8,spinner:#6052cf,hl:#6060d0 \
--color=fg:#222222,header:#375cd8,info:#63728f,pointer:#6052cf \
--color=marker:#6052cf,fg+:#f9e8c0,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f9e8c0,bg:#f6ece8,spinner:#6052cf,hl:#6060d0
# --color=fg:#222222,header:#375cd8,info:#63728f,pointer:#6052cf
# --color=marker:#6052cf,fg+:#f9e8c0,prompt:#6060d0,hl+:#6060d0
# "@
  
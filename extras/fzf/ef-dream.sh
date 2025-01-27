export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#412f4f,bg:#322f34,spinner:#d0b0ff,hl:#a0a0cf \
--color=fg:#efd5c5,header:#8fcfd0,info:#8f8886,pointer:#d0b0ff \
--color=marker:#d0b0ff,fg+:#412f4f,prompt:#a0a0cf,hl+:#a0a0cf \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#412f4f,bg:#322f34,spinner:#d0b0ff,hl:#a0a0cf
# --color=fg:#efd5c5,header:#8fcfd0,info:#8f8886,pointer:#d0b0ff
# --color=marker:#d0b0ff,fg+:#412f4f,prompt:#a0a0cf,hl+:#a0a0cf
# "@
  
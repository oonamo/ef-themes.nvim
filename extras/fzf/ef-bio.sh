export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#00331f,bg:#222522,spinner:#af9fff,hl:#6ab4cf \
--color=fg:#cfdfd5,header:#3fb83f,info:#808f80,pointer:#af9fff \
--color=marker:#af9fff,fg+:#00331f,prompt:#6ab4cf,hl+:#6ab4cf \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#00331f,bg:#222522,spinner:#af9fff,hl:#6ab4cf
# --color=fg:#cfdfd5,header:#3fb83f,info:#808f80,pointer:#af9fff
# --color=marker:#af9fff,fg+:#00331f,prompt:#6ab4cf,hl+:#6ab4cf
# "@
  
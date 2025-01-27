export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f9e0e5,bg:#e8f0f0,spinner:#9435b4,hl:#6a65bf \
--color=fg:#34494a,header:#007f68,info:#777294,pointer:#9435b4 \
--color=marker:#9435b4,fg+:#f9e0e5,prompt:#6a65bf,hl+:#6a65bf \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f9e0e5,bg:#e8f0f0,spinner:#9435b4,hl:#6a65bf
# --color=fg:#34494a,header:#007f68,info:#777294,pointer:#9435b4
# --color=marker:#9435b4,fg+:#f9e0e5,prompt:#6a65bf,hl+:#6a65bf
# "@
  
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#e7d9e0,bg:#e5d6d4,spinner:#7755b4,hl:#475d80 \
--color=fg:#4f204f,header:#4f60a0,info:#6f6877,pointer:#7755b4 \
--color=marker:#7755b4,fg+:#e7d9e0,prompt:#475d80,hl+:#475d80 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#e7d9e0,bg:#e5d6d4,spinner:#7755b4,hl:#475d80
# --color=fg:#4f204f,header:#4f60a0,info:#6f6877,pointer:#7755b4
# --color=marker:#7755b4,fg+:#e7d9e0,prompt:#475d80,hl+:#475d80
# "@
  
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#002255,bg:#1a202b,spinner:#af8aff,hl:#7a94df \
--color=fg:#afbcbf,header:#6a88ff,info:#70819f,pointer:#af8aff \
--color=marker:#af8aff,fg+:#002255,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#002255,bg:#1a202b,spinner:#af8aff,hl:#7a94df
# --color=fg:#afbcbf,header:#6a88ff,info:#70819f,pointer:#af8aff
# --color=marker:#af8aff,fg+:#002255,prompt:#7a94df,hl+:#7a94df
# "@
  
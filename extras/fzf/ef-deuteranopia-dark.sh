export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#2e2e1b,bg:#121f34,spinner:#9f95ff,hl:#7a94df \
--color=fg:#ddddee,header:#6a9fff,info:#7f8797,pointer:#9f95ff \
--color=marker:#9f95ff,fg+:#2e2e1b,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#2e2e1b,bg:#121f34,spinner:#9f95ff,hl:#7a94df
# --color=fg:#ddddee,header:#6a9fff,info:#7f8797,pointer:#9f95ff
# --color=marker:#9f95ff,fg+:#2e2e1b,prompt:#7a94df,hl+:#7a94df
# "@
  
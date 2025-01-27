export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#34223f,bg:#2a2228,spinner:#a698ef,hl:#7a94df \
--color=fg:#d8cfd5,header:#7fa5f6,info:#908890,pointer:#a698ef \
--color=marker:#a698ef,fg+:#34223f,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#34223f,bg:#2a2228,spinner:#a698ef,hl:#7a94df
# --color=fg:#d8cfd5,header:#7fa5f6,info:#908890,pointer:#a698ef
# --color=marker:#a698ef,fg+:#34223f,prompt:#7a94df,hl+:#7a94df
# "@
  
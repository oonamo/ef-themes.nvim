export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#401f33,bg:#291f26,spinner:#df7fff,hl:#7f9ab4 \
--color=fg:#d3cfcf,header:#f59280,info:#808898,pointer:#df7fff \
--color=marker:#df7fff,fg+:#401f33,prompt:#7f9ab4,hl+:#7f9ab4 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#401f33,bg:#291f26,spinner:#df7fff,hl:#7f9ab4
# --color=fg:#d3cfcf,header:#f59280,info:#808898,pointer:#df7fff
# --color=marker:#df7fff,fg+:#401f33,prompt:#7f9ab4,hl+:#7f9ab4
# "@
  
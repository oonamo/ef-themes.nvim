export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#344255,bg:#373b3d,spinner:#cfa0e8,hl:#aab2df \
--color=fg:#d0d0d0,header:#80a4e0,info:#857f8f,pointer:#cfa0e8 \
--color=marker:#cfa0e8,fg+:#344255,prompt:#aab2df,hl+:#aab2df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#344255,bg:#373b3d,spinner:#cfa0e8,hl:#aab2df
# --color=fg:#d0d0d0,header:#80a4e0,info:#857f8f,pointer:#cfa0e8
# --color=marker:#cfa0e8,fg+:#344255,prompt:#aab2df,hl+:#aab2df
# "@
  
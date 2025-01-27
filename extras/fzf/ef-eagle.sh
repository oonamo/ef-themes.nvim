export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#ecdfba,bg:#e4dbc0,spinner:#50119f,hl:#2f3460 \
--color=fg:#231a1f,header:#226022,info:#685f53,pointer:#50119f \
--color=marker:#50119f,fg+:#ecdfba,prompt:#2f3460,hl+:#2f3460 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#ecdfba,bg:#e4dbc0,spinner:#50119f,hl:#2f3460
# --color=fg:#231a1f,header:#226022,info:#685f53,pointer:#50119f
# --color=marker:#50119f,fg+:#ecdfba,prompt:#2f3460,hl+:#2f3460
# "@
  
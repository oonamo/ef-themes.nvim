export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#003045,bg:#1d202f,spinner:#af85ea,hl:#7a94df \
--color=fg:#b8c6d5,header:#d369af,info:#807c9f,pointer:#af85ea \
--color=marker:#af85ea,fg+:#003045,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#003045,bg:#1d202f,spinner:#af85ea,hl:#7a94df
# --color=fg:#b8c6d5,header:#d369af,info:#807c9f,pointer:#af85ea
# --color=marker:#af85ea,fg+:#003045,prompt:#7a94df,hl+:#7a94df
# "@
  
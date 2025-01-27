export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#dff6e4,bg:#eaefef,spinner:#7f5ae0,hl:#375cc8 \
--color=fg:#232323,header:#3a6dd2,info:#66657f,pointer:#7f5ae0 \
--color=marker:#7f5ae0,fg+:#dff6e4,prompt:#375cc8,hl+:#375cc8 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#dff6e4,bg:#eaefef,spinner:#7f5ae0,hl:#375cc8
# --color=fg:#232323,header:#3a6dd2,info:#66657f,pointer:#7f5ae0
# --color=marker:#7f5ae0,fg+:#dff6e4,prompt:#375cc8,hl+:#375cc8
# "@
  
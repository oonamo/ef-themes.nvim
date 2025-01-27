export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#42352f,bg:#432e32,spinner:#cfb1ff,hl:#9fbfdf \
--color=fg:#e4d3e1,header:#f28fdf,info:#9d9d9d,pointer:#cfb1ff \
--color=marker:#cfb1ff,fg+:#42352f,prompt:#9fbfdf,hl+:#9fbfdf \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#42352f,bg:#432e32,spinner:#cfb1ff,hl:#9fbfdf
# --color=fg:#e4d3e1,header:#f28fdf,info:#9d9d9d,pointer:#cfb1ff
# --color=marker:#cfb1ff,fg+:#42352f,prompt:#9fbfdf,hl+:#9fbfdf
# "@
  
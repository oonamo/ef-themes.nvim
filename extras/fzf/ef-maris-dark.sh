export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#243242,bg:#1d2c39,spinner:#cf90ff,hl:#9acfff \
--color=fg:#eaedef,header:#57b0ff,info:#969faf,pointer:#cf90ff \
--color=marker:#cf90ff,fg+:#243242,prompt:#9acfff,hl+:#9acfff \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#243242,bg:#1d2c39,spinner:#cf90ff,hl:#9acfff
# --color=fg:#eaedef,header:#57b0ff,info:#969faf,pointer:#cf90ff
# --color=marker:#cf90ff,fg+:#243242,prompt:#9acfff,hl+:#9acfff
# "@
  
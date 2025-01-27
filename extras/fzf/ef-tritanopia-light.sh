export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#ffdadf,bg:#efecec,spinner:#af40af,hl:#6060d0 \
--color=fg:#1a1a1a,header:#aa357f,info:#756275,pointer:#af40af \
--color=marker:#af40af,fg+:#ffdadf,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#ffdadf,bg:#efecec,spinner:#af40af,hl:#6060d0
# --color=fg:#1a1a1a,header:#aa357f,info:#756275,pointer:#af40af
# --color=marker:#af40af,fg+:#ffdadf,prompt:#6060d0,hl+:#6060d0
# "@
  
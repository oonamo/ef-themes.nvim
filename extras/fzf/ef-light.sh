export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#e4efd8,bg:#efefef,spinner:#6052cf,hl:#4f54aa \
--color=fg:#202020,header:#6052cf,info:#68759f,pointer:#6052cf \
--color=marker:#6052cf,fg+:#e4efd8,prompt:#4f54aa,hl+:#4f54aa \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#e4efd8,bg:#efefef,spinner:#6052cf,hl:#4f54aa
# --color=fg:#202020,header:#6052cf,info:#68759f,pointer:#6052cf
# --color=marker:#6052cf,fg+:#e4efd8,prompt:#4f54aa,hl+:#4f54aa
# "@
  
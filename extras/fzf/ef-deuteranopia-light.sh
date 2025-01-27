export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f3e0d5,bg:#e8e8ea,spinner:#6052cf,hl:#6060d0 \
--color=fg:#1a1a2f,header:#4250ef,info:#70627f,pointer:#6052cf \
--color=marker:#6052cf,fg+:#f3e0d5,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f3e0d5,bg:#e8e8ea,spinner:#6052cf,hl:#6060d0
# --color=fg:#1a1a2f,header:#4250ef,info:#70627f,pointer:#6052cf
# --color=marker:#6052cf,fg+:#f3e0d5,prompt:#6060d0,hl+:#6060d0
# "@
  
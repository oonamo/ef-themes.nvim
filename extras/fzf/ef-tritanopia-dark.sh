export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#3f1515,bg:#282026,spinner:#a6699f,hl:#6a84af \
--color=fg:#dfd0d5,header:#b0648f,info:#908890,pointer:#a6699f \
--color=marker:#a6699f,fg+:#3f1515,prompt:#6a84af,hl+:#6a84af \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#3f1515,bg:#282026,spinner:#a6699f,hl:#6a84af
# --color=fg:#dfd0d5,header:#b0648f,info:#908890,pointer:#a6699f
# --color=marker:#a6699f,fg+:#3f1515,prompt:#6a84af,hl+:#6a84af
# "@
  
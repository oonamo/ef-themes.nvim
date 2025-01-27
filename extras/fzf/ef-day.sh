export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f9e2b2,bg:#f2e9db,spinner:#8448aa,hl:#4a659f \
--color=fg:#584141,header:#a45a22,info:#63728f,pointer:#8448aa \
--color=marker:#8448aa,fg+:#f9e2b2,prompt:#4a659f,hl+:#4a659f \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f9e2b2,bg:#f2e9db,spinner:#8448aa,hl:#4a659f
# --color=fg:#584141,header:#a45a22,info:#63728f,pointer:#8448aa
# --color=marker:#8448aa,fg+:#f9e2b2,prompt:#4a659f,hl+:#4a659f
# "@
  
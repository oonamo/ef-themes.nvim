export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f2e5d9,bg:#efe7e7,spinner:#7022bf,hl:#6060d0 \
--color=fg:#201f36,header:#a01f64,info:#776f79,pointer:#7022bf \
--color=marker:#7022bf,fg+:#f2e5d9,prompt:#6060d0,hl+:#6060d0 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f2e5d9,bg:#efe7e7,spinner:#7022bf,hl:#6060d0
# --color=fg:#201f36,header:#a01f64,info:#776f79,pointer:#7022bf
# --color=marker:#7022bf,fg+:#f2e5d9,prompt:#6060d0,hl+:#6060d0
# "@
  
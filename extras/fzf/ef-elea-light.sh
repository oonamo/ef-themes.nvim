export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#d0e7c4,bg:#e3e9d6,spinner:#5032aa,hl:#3a5099 \
--color=fg:#221321,header:#355500,info:#676470,pointer:#5032aa \
--color=marker:#5032aa,fg+:#d0e7c4,prompt:#3a5099,hl+:#3a5099 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#d0e7c4,bg:#e3e9d6,spinner:#5032aa,hl:#3a5099
# --color=fg:#221321,header:#355500,info:#676470,pointer:#5032aa
# --color=marker:#5032aa,fg+:#d0e7c4,prompt:#3a5099,hl+:#3a5099
# "@
  
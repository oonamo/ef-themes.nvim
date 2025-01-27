export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#dae5f0,bg:#e0e7ef,spinner:#5f2fba,hl:#3a5099 \
--color=fg:#151a27,header:#375cc6,info:#676470,pointer:#5f2fba \
--color=marker:#5f2fba,fg+:#dae5f0,prompt:#3a5099,hl+:#3a5099 \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#dae5f0,bg:#e0e7ef,spinner:#5f2fba,hl:#3a5099
# --color=fg:#151a27,header:#375cc6,info:#676470,pointer:#5f2fba
# --color=marker:#5f2fba,fg+:#dae5f0,prompt:#3a5099,hl+:#3a5099
# "@
  
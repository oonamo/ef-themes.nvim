export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#301a4f,bg:#1d1a26,spinner:#af85ff,hl:#8a9fdf \
--color=fg:#d0d0d0,header:#379cf6,info:#857f8f,pointer:#af85ff \
--color=marker:#af85ff,fg+:#301a4f,prompt:#8a9fdf,hl+:#8a9fdf \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#301a4f,bg:#1d1a26,spinner:#af85ff,hl:#8a9fdf
# --color=fg:#d0d0d0,header:#379cf6,info:#857f8f,pointer:#af85ff
# --color=marker:#af85ff,fg+:#301a4f,prompt:#8a9fdf,hl+:#8a9fdf
# "@
  
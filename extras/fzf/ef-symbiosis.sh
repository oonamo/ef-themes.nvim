export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#1f2f3f,bg:#221920,spinner:#af85ff,hl:#7a94df \
--color=fg:#d0d0d0,header:#3f95f6,info:#857f8f,pointer:#af85ff \
--color=marker:#af85ff,fg+:#1f2f3f,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#1f2f3f,bg:#221920,spinner:#af85ff,hl:#7a94df
# --color=fg:#d0d0d0,header:#3f95f6,info:#857f8f,pointer:#af85ff
# --color=marker:#af85ff,fg+:#1f2f3f,prompt:#7a94df,hl+:#7a94df
# "@
  
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#002435,bg:#1a1a1a,spinner:#af85ff,hl:#7a94df \
--color=fg:#d0d0d0,header:#6a9fff,info:#857f8f,pointer:#af85ff \
--color=marker:#af85ff,fg+:#002435,prompt:#7a94df,hl+:#7a94df \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#002435,bg:#1a1a1a,spinner:#af85ff,hl:#7a94df
# --color=fg:#d0d0d0,header:#6a9fff,info:#857f8f,pointer:#af85ff
# --color=marker:#af85ff,fg+:#002435,prompt:#7a94df,hl+:#7a94df
# "@
  
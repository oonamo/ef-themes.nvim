export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#f0e0d4,bg:#f0ece0,spinner:#8448aa,hl:#4a659f \
--color=fg:#242521,header:#557400,info:#59786f,pointer:#8448aa \
--color=marker:#8448aa,fg+:#f0e0d4,prompt:#4a659f,hl+:#4a659f \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#f0e0d4,bg:#f0ece0,spinner:#8448aa,hl:#4a659f
# --color=fg:#242521,header:#557400,info:#59786f,pointer:#8448aa
# --color=marker:#8448aa,fg+:#f0e0d4,prompt:#4a659f,hl+:#4a659f
# "@
  
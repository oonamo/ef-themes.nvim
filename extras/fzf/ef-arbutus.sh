export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#fad8bf,bg:#f0d8cf,spinner:#6448ca,hl:#4a659f \
--color=fg:#393330,header:#aa184f,info:#6e678f,pointer:#6448ca \
--color=marker:#6448ca,fg+:#fad8bf,prompt:#4a659f,hl+:#4a659f \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#fad8bf,bg:#f0d8cf,spinner:#6448ca,hl:#4a659f
# --color=fg:#393330,header:#aa184f,info:#6e678f,pointer:#6448ca
# --color=marker:#6448ca,fg+:#fad8bf,prompt:#4a659f,hl+:#4a659f
# "@
  
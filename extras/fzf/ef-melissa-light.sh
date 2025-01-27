export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#fae7b0,bg:#f5e9cb,spinner:#6448ca,hl:#4a659f \
--color=fg:#484431,header:#946830,info:#68708a,pointer:#6448ca \
--color=marker:#6448ca,fg+:#fae7b0,prompt:#4a659f,hl+:#4a659f \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#fae7b0,bg:#f5e9cb,spinner:#6448ca,hl:#4a659f
# --color=fg:#484431,header:#946830,info:#68708a,pointer:#6448ca
# --color=marker:#6448ca,fg+:#fae7b0,prompt:#4a659f,hl+:#4a659f
# "@
  
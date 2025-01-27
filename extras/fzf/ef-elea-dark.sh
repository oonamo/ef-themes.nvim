export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#2f413f,bg:#303332,spinner:#cfaaff,hl:#6ab4ef \
--color=fg:#eaf2ef,header:#7fc87f,info:#969faf,pointer:#cfaaff \
--color=marker:#cfaaff,fg+:#2f413f,prompt:#6ab4ef,hl+:#6ab4ef \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#2f413f,bg:#303332,spinner:#cfaaff,hl:#6ab4ef
# --color=fg:#eaf2ef,header:#7fc87f,info:#969faf,pointer:#cfaaff
# --color=marker:#cfaaff,fg+:#2f413f,prompt:#6ab4ef,hl+:#6ab4ef
# "@
  
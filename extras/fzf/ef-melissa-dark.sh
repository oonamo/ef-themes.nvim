export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#4f311f,bg:#483426,spinner:#c6a2fe,hl:#6ab4ef \
--color=fg:#e8e4b1,header:#e7a06f,info:#90918a,pointer:#c6a2fe \
--color=marker:#c6a2fe,fg+:#4f311f,prompt:#6ab4ef,hl+:#6ab4ef \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#4f311f,bg:#483426,spinner:#c6a2fe,hl:#6ab4ef
# --color=fg:#e8e4b1,header:#e7a06f,info:#90918a,pointer:#c6a2fe
# --color=marker:#c6a2fe,fg+:#4f311f,prompt:#6ab4ef,hl+:#6ab4ef
# "@
  
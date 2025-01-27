export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:#302a3a,bg:#26211d,spinner:#af8aff,hl:#6a84af \
--color=fg:#cfbcba,header:#64aa0f,info:#887c8a,pointer:#af8aff \
--color=marker:#af8aff,fg+:#302a3a,prompt:#6a84af,hl+:#6a84af \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:#302a3a,bg:#26211d,spinner:#af8aff,hl:#6a84af
# --color=fg:#cfbcba,header:#64aa0f,info:#887c8a,pointer:#af8aff
# --color=marker:#af8aff,fg+:#302a3a,prompt:#6a84af,hl+:#6a84af
# "@
  
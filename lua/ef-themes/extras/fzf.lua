local M = {}

function M.template()
  return [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none \
--color=bg+:${bg_completion},bg:${bg_inactive},spinner:${magenta_cooler},hl:${accent_0} \
--color=fg:${fg_main},header:${name},info:${fg_dim},pointer:${magenta_cooler} \
--color=marker:${magenta_cooler},fg+:${fg_main},prompt:${blue_faint},hl+:${accent_0} \
"

# On powershell do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:${bg_completion},bg:${bg_inactive},spinner:${magenta_cooler},hl:${accent_0}
# --color=fg:${fg_main},header:${name},info:${fg_dim},pointer:${magenta_cooler}
# --color=marker:${magenta_cooler},fg+:${fg_main},prompt:${blue_faint},hl+:${accent_0}
#"@
  ]]
end

return M

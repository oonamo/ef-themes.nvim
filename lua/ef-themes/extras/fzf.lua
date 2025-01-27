local M = {}

function M.template()
  return [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--highlight-line \
--ansi \
--layout=reverse \
--border=none
--color=bg+:${bg_hl_line},bg:${bg_dim},spinner:${magenta_cooler},hl:${blue_faint} \
--color=fg:${fg_main},header:${name},info:${fg_dim},pointer:${magenta_cooler} \
--color=marker:${magenta_cooler},fg+:${bg_hl_line},prompt:${blue_faint},hl+:${blue_faint} \

# On powershell use do `nvim $PROFILE` and paste
# $ENV:FZF_DEFAULT_OPTS =@"
# --highlight-line
# --ansi
# --layout=reverse
# --border=none
# --color=bg+:${bg_hl_line},bg:${bg_dim},spinner:${magenta_cooler},hl:${blue_faint}
# --color=fg:${fg_main},header:${name},info:${fg_dim},pointer:${magenta_cooler}
# --color=marker:${magenta_cooler},fg+:${bg_hl_line},prompt:${blue_faint},hl+:${blue_faint}
# "@
  ]]
end

return M

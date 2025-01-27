local M = {}

function M.template()
  return [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg_main}",
    "black": "${fg_term_black}",
    "blue": "${blue}",
    "brightBlack": "${fg_term_black}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${magenta_cooler}",
    "brightRed": "${red}",
    "brightWhite": "${fg_main}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg_main}",
    "cyan": "${cyan}",
    "foreground": "${fg_main}",
    "green": "${green}",
    "name": "${_name}",
    "purple": "${magenta}",
    "red": "${red}",
    "selectionBackground": "${bg_hl_line}",
    "white": "${fg_dim}",
    "yellow": "${yellow}"
}
  ]]
end

return M

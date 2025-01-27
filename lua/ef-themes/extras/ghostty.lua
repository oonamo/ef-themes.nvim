local M = {}

function M.template()
  return [[
palette = 0=${fg_term_black}
palette = 1=${fg_term_red}
palette = 2=${fg_term_green}
palette = 3=${fg_term_yellow}
palette = 4=${fg_term_blue}
palette = 5=${fg_term_magenta}
palette = 6=${fg_term_cyan}
palette = 7=${fg_term_white}
palette = 8=${fg_term_black_bright}
palette = 9=${fg_term_red_bright}
palette = 10=${fg_term_green_bright}
palette = 11=${fg_term_yellow_bright}
palette = 12=${fg_term_blue_bright}
palette = 13=${fg_term_magenta_bright}
palette = 14=${fg_term_cyan_bright}
palette = 15=${fg_term_white_bright}

background = ${bg_main}
foreground = ${fg_main}
cursor-color = ${cursor}
selection-background = ${bg_hl_line}
selection-foreground = ${fg_main}
  ]]
end

return M

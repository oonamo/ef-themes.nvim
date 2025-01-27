local M = {
  groups = {
    "base",
    "blink",
    "mini",
    "treesitter",
    "fzf",
    --   "semantic-tokens"
    --   "fzf-lua"
  },
}

---@param palette Ef-Theme
---@param opts table
---@param name string
function M.build(palette, opts, name)
  if vim.g.colors_name then vim.cmd.hi("clear") end
  vim.o.termguicolors = true
  vim.g.colors_name = name

  for _, mod in ipairs(opts.modules or {}) do
    local theme_opts = require("ef-themes.groups." .. mod).get(palette)
    for k, v in pairs(theme_opts or {}) do
      vim.api.nvim_set_hl(0, k, v)
    end
  end

  -- dark
  vim.g.terminal_color_0 = palette.fg_term_black
  vim.g.terminal_color_8 = palette.fg_term_black_bright

  -- light
  vim.g.terminal_color_7 = palette.fg_term_white
  vim.g.terminal_color_15 = palette.fg_term_white_bright

  -- palette
  vim.g.terminal_color_1 = palette.fg_term_red
  vim.g.terminal_color_9 = palette.fg_term_red_bright

  vim.g.terminal_color_2 = palette.fg_term_green
  vim.g.terminal_color_10 = palette.fg_term_green_bright

  vim.g.terminal_color_3 = palette.fg_term_yellow
  vim.g.terminal_color_11 = palette.fg_term_yellow_bright

  vim.g.terminal_color_4 = palette.fg_term_blue
  vim.g.terminal_color_12 = palette.fg_term_blue_bright

  vim.g.terminal_color_5 = palette.fg_term_magenta
  vim.g.terminal_color_13 = palette.fg_term_magenta_bright

  vim.g.terminal_color_6 = palette.fg_term_cyan
  vim.g.terminal_color_14 = palette.fg_term_cyan_bright
end

return M

local M = {
  groups = {
    "base",
    "blink",
    "cmp",
    "fzf",
    "gitsigns",
    "mini",
    "neogit",
    "render_markdown",
    "semantic_tokens",
    "snacks",
    "telescope",
    "treesitter",
  },
}

local function resolve_hl(hl)
  if type(hl) == "string" then return { link = hl } end

  if not hl.style then return hl end
  for name, value in pairs(hl.style) do
    hl[name] = value
  end
  hl.style = nil

  return hl
end

---@param palette Ef-Theme
---@param opts table
---@param name string
---@param theme_opts table
function M.build(palette, opts, name, theme_opts)
  if vim.g.colors_name then vim.cmd.hi("clear") end
  vim.o.termguicolors = true
  vim.g.colors_name = name

  local all_groups = {}

  for k, v in pairs(require("ef-themes.groups.base").get(palette, opts)) do
    local hl = resolve_hl(v)
    vim.api.nvim_set_hl(0, k, hl)
    all_groups[k] = hl
  end

  for modname, use in pairs(opts.modules or {}) do
    if use then
      if not vim.tbl_contains(M.groups, modname) then
        vim.notify(string.format("[ef-themes]: Module '%s' does not exist.", modname), vim.log.levels.ERROR)
      else
        local mod_highlights = require("ef-themes.groups." .. modname).get(palette, opts)
        for k, v in pairs(mod_highlights or {}) do
          local hl = resolve_hl(v)
          vim.api.nvim_set_hl(0, k, hl)
          all_groups[k] = hl
        end
      end
    end
  end

  M.terminal(palette)

  opts.on_highlights(all_groups, palette, name)
  if opts.options.compile then require("ef-themes.compiler").compile(opts, all_groups, theme_opts) end
end

function M.terminal(palette)
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

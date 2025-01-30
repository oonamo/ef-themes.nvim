local M = {
  groups = {
    blink = { label = "blink.cmp", url = "https://github.com/Saghen/blink.cmp" },
    cmp = { label = "nvim-cmp", url = "https://github.com/hrsh7th/nvim-cmp" },
    fzf = { label = "fzf-lua", url = "https://github.com/ibhagwan/fzf-lua" },
    gitsigns = { label = "gitsigns.nvim", url = "https://github.com/lewis6991/gitsigns.nvim" },
    mini = { label = "mini.nvim", url = "https://github.com/echasnovski/mini.nvim" },
    neogit = { label = "Neogit", url = "https://github.com/TimUntersberger/neogit" },
    render_markdown = {
      label = "render-markdown",
      url = "https://github.com/MeanderingProgrammer/render-markdown.nvim",
    },
    semantic_tokens = { label = "semantic-tokens (native lsp)" },
    snacks = { label = "snacks", url = "https://github.com/folke/snacks.nvim" },
    telescope = { label = "telescope", url = "https://github.com/nvim-telescope/telescope.nvim" },
    treesitter = { label = "treesitter (native)" },
    which_key = { label = "whick-key.nvim", url = "https://github.com/folke/which-key.nvim" },
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
---
---@private
function M.build(palette, opts, name, theme_opts)
  if vim.g.colors_name then vim.cmd.hi("clear") end
  vim.o.termguicolors = true
  vim.g.colors_name = name

  local all_groups = {}

  local required_groups = {
    "base",
    "kinds",
  }

  for _, group in ipairs(required_groups) do
    for hl_name, v in pairs(require("ef-themes.groups." .. group).get(palette, opts)) do
      local hl = resolve_hl(v)
      vim.api.nvim_set_hl(0, hl_name, hl)
      all_groups[hl_name] = hl
    end
  end

  for modname, use in pairs(opts.modules or {}) do
    if use then
      if not M.groups[modname] then
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
  if opts.options.compile then require("ef-themes.lib.compiler").compile(opts, all_groups, theme_opts) end
end

---@param palette Ef-Theme
---@private
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

function M.generate_docs() end

return M

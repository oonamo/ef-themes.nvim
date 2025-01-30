local M = {
  -- stylua: ignore
  groups = {
    blink = {           label = "blink.cmp",       url = "https://github.com/Saghen/blink.cmp",                          default = true },
    cmp = {             label = "nvim-cmp",        url = "https://github.com/hrsh7th/nvim-cmp",                          default = false },
    fzf = {             label = "fzf-lua",         url = "https://github.com/ibhagwan/fzf-lua",                          default = false },
    gitsigns = {        label = "gitsigns.nvim",   url = "https://github.com/lewis6991/gitsigns.nvim",                   default = false },
    mini = {            label = "mini.nvim",       url = "https://github.com/echasnovski/mini.nvim",                     default = true },
    neogit = {          label = "Neogit",          url = "https://github.com/TimUntersberger/neogit",                    default = false },
    render_markdown = { label = "render-markdown", url = "https://github.com/MeanderingProgrammer/render-markdown.nvim", default = false },
    semantic_tokens = { label = "semantic-tokens (native lsp)",                                                          default = false },
    snacks = {          label = "snacks",          url = "https://github.com/folke/snacks.nvim",                         default = false },
    telescope = {       label = "telescope",       url = "https://github.com/nvim-telescope/telescope.nvim" ,            default = false},
    treesitter = {      label = "treesitter (native)",                                                                   default = true },
    which_key = {       label = "whick-key.nvim",  url = "https://github.com/folke/which-key.nvim",                      default = false },
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

---@param style "help"|"readme"
---@return string[]
function M.generate_doc_strings(style)
  style = style or "help"
  local fmt = string.format

  local function format_str(modname, data)
    if style == "help" then return fmt("* `%s` -> `{ %s = %s }`", data.label, modname, vim.inspect(data.default)) end
    if not data.url then return fmt("- %s", data.label) end
    return fmt("- [%s](%s)", data.label, data.url or "")
  end

  local ret = {}
  if style == "help" then table.insert(ret, "* `Plugin` -> `Default`") end
  table.insert(ret, "")

  for modname, data in pairs(M.groups) do
    table.insert(ret, format_str(modname, data))
  end

  table.insert(ret, "")

  if style == "help" then return require("mini.align").align_strings(ret, {
    split_pattern = "->",
  }) end
  return ret
end

function M.generate_readme()
  local readme_modules = M.generate_doc_strings("readme")
  local Utils = require("ef-themes.utils")
  local readme_file = vim.fn.fnamemodify(debug.getinfo(1).source:sub(2), ":p:h:h:h:h:") .. "/README.md"

  local readme = Utils.read(readme_file, "*a")
  local old_length = #readme
  readme = readme:gsub(
    "(<%!%-%- modules:start %-%->).*(<%!%-%- modules:end %-%->)",
    "%1\n" .. table.concat(readme_modules, "\n") .. "\n%2"
  )

  print("old_length", old_length, "new_length", #readme)
  assert(#readme >= old_length, "The file did not correctly add the extras")

  Utils.write(readme_file, readme, "w+")
end

return M

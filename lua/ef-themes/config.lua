local Config = {}

---                                                              *EfThemes.Defaults*
--- # Defaults
---
--- See |EfThemes.setup()| for usage
---
---@eval return MiniDoc.afterlines_to_code(MiniDoc.current.eval_section)
---@text # Notes ~
--- - `light` and `dark` theme are updated if the current dark or light theme
---   is diffrent from the set values
---
--- - The `colors` field is very large. See |EfThemes-colors| to see them all
---
--- # Ef-themes.Config ~
---@class Ef-themes.Config
---@field on_colors fun(palette: Ef-Theme, name: string)
---@field on_highlights fun(highlights: table, colors: Ef-Theme, name: string)
--minidoc_replace_start EfThemes.config.defaults = {
Config.defaults = {
  --minidoc_replace_end
  light = "ef-spring", -- Ef-theme to select for light backgrounds
  dark = "ef-winter", -- Ef-theme to select for dark backgrounds
  transparent = false,
  styles = {
    -- Set specific styles for specific highlight groups
    -- Can be any valid attr-list value. See `:h nvim_set_hl`
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },

  modules = {
    -- Enable/Disable highlights for a module
    blink = true,
    fzf = false,
    mini = true,
    semantic_tokens = false,
    snacks = false,
    treesitter = true,
  },

  --- Override any color from the ef-theme
  ---@param colors Ef-Theme
  ---@param name string
  on_colors = function(colors, name) end,

  --- Override specific highlights
  ---@param highlights table
  ---@param colors Ef-Theme
  ---@param name string
  on_highlights = function(highlights, colors, name)
    -- Should add or replace the highlights table, not return
    -- i.e.
    --
    -- `highlights.Normal = { fg = colors.fg_alt, bg = colors.bg_inactive }`
    -- `highlights.MyObsucrePligin = { fg = colors.yellow_faint }`
  end,

  options = {
    compile = true, -- Whether to compile a theme
    compile_path = vim.fn.stdpath("cache") .. "/ef-themes", -- Directory in which to place compiled themes
  },
}
--minidoc_afterlines_end

---@param options? Ef-themes.Config
---@private
function Config.setup(options)
  Config.options = vim.tbl_deep_extend("force", {}, Config.defaults, options or {})
  _G.EfThemes.config = Config
end

---@param opts? Ef-themes.Config
---@return Ef-themes.Config
---
---@private
function Config.extend(opts)
  local new = opts and vim.tbl_deep_extend("force", {}, Config.options, opts) or Config.options
  Config.options = new
  return new
end

---@return Ef-themes.Config
---@private
function Config.get_default() return vim.deepcopy(Config.defaults) end

return Config

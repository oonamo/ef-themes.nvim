local M = {}

---@class Ef-themes.Config
---@field on_colors fun(palette: Ef-Theme, name: string)
---@field on_highlights fun(highlights: table, colors: Ef-Theme, name: string)
M.defaults = {
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
  on_highlights = function(highlights, colors, name) end,

  options = {
    compile = true, -- Whether to compile a theme
    compile_path = vim.fn.stdpath("cache") .. "/ef-themes", -- Directory in which to place compiled themes
  },
}

function M.setup(options) M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {}) end

---@param opts? Ef-themes.Config
---@return Ef-themes.Config
function M.extend(opts) return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options end

function M.get_default() return vim.deepcopy(M.defaults) end

return M

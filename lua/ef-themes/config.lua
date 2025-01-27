local M = {}

---@class Ef-themes.Config
---@field on_colors fun(palette: Ef-Theme, name: string)
---@field on_highlights fun(highlights: table, colors: Ef-Theme, name: string)
M.defaults = {
  light = "ef-spring",
  dark = "ef-winter",

  modules = {
    "base",
    "blink",
    "mini",
    "treesitter",
    --   "semantic-tokens"
  },

  --- Override any color from the ef-theme
  ---@param colors Ef-Theme Color Palette
  ---@param name string Then name of the ef-theme
  on_colors = function(colors, name) end, -- TODO: Unimplemented

  --- Override specific highlights
  ---@param highlights table
  ---@param colors Ef-Theme
  on_highlights = function(highlights, colors, name) end, -- TODO: Unimplemented

  options = {
    compile = true, -- TODO: Unimplemented
    compile_path = vim.fn.stdpath("cache") .. "/ef-themes",
  },
}

function M.setup(options) M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {}) end

function M.extend(opts) return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options end

function M.get_default() return vim.deepcopy(M.defaults) end

return M

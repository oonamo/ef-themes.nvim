local M = {}

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
}

function M.setup(options) M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {}) end

function M.extend(opts) return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options end

return M

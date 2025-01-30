local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.keybind, bold = true },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.keyword },
    WhichKeySeparator = { fg = c.fg_dim },
    WhichKeyNormal    = { bg = c.bg_inactive },
    WhichKeyValue     = { fg = c.fg_dim },
  }
end

return M

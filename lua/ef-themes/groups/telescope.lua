local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.border, bg     = c.bg_dim },
    TelescopeMatching       = { fg = c.accent_0, bold = true },
    TelescopeNormal         = { fg = c.fg_main, bg    = c.bg_dim },
    TelescopePromptBorder   = { fg = c.accent_1, bg   = c.bg_dim },
    TelescopePromptTitle    = { fg = c.name, bg       = c.bg_dim },
    TelescopeResultsComment = { fg = c.prompt },
    TelescopeSelection      = { bg = c.bg_completion },
    TelescopeTitle          = { fg = c.name, bg       = c.bg_dim },
  }
end

return M

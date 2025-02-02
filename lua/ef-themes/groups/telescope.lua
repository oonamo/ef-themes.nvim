local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  local style = {}
  if opts.styles.pickers == "borderless" then
    style = {
      TelescopeNormal = { bg = c.bg_dim, fg = c.fg_dim },
      TelescopeBorder = { bg = c.bg_dim, fg = c.bg_dim },
      TelescopePromptNormal = { bg = c.bg_dim },
      TelescopePromptBorder = { bg = c.bg_dim, fg = c.bg_dim },
      TelescopePromptPrefix = { bg = c.bg_dim, fg = c.prompt },
      TelescopePromptCounter = { bg = c.bg_dim, fg = c.prompt },
      TelescopePreviewBorder = { bg = c.bg_inactive, fg = c.bg_inactive },
      TelescopeResultsBorder = { bg = c.bg_dim, fg = c.bg_dim },
      TelescopePromptTitle = { fg = c.bg_inactive, bg = c.name },
      TelescopePreviewTitle = { fg = c.bg_main, bg = c.accent_1 },
      TelescopeResultsTitle = { fg = c.bg_main, bg = c.accent_2 },
      TelescopePreviewNormal = { bg = c.bg_inactive },
    }
  end

  -- stylua: ignore
  return vim.tbl_deep_extend("keep", style, {
    TelescopeBorder         = { fg = c.border, bg     = c.bg_dim },
    TelescopeMatching       = { fg = c.accent_0, bold = true },
    TelescopeNormal         = { fg = c.fg_main, bg    = c.bg_dim },
    TelescopePromptBorder   = { fg = c.accent_1, bg   = c.bg_dim },
    TelescopePromptTitle    = { fg = c.name, bg       = c.bg_dim },
    TelescopeResultsComment = { fg = c.prompt },
    TelescopeSelection      = { bg = c.bg_completion },
    TelescopeTitle          = { fg = c.name, bg       = c.bg_dim },
  })
end

return M

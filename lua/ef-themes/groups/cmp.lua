local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua:
  return {
    CmpDocumentation = { fg = c.fg_main, bg = c.bg_dim },
    CmpDocumentationBorder = { fg = c.border, bg = c.bg_dim },
    CmpGhostText = { fg = c.fg_alt },
    CmpItemAbbr = { fg = c.fg_main },
    CmpItemAbbrDeprecated = { fg = c.fg_dim, bg = "NONE", strikethrough = true },
    CmpItemAbbrMatch = { fg = c.accent_0, bg = "NONE", bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.accent_0, bg = "NONE", bold = true },
    CmpItemKindCodeium = { fg = c.cyan_faint, bg = "NONE" },
    CmpItemKindCopilot = { fg = c.cyan_faint, bg = "NONE" },
    CmpItemKindSupermaven = { fg = c.cyan_faint, bg = "NONE" },
    CmpItemKindDefault = { fg = c.fg_dim, bg = "NONE" },
    CmpItemKindTabNine = { fg = c.cyan_faint, bg = "NONE" },
    CmpItemMenu = { fg = c.fg_main, bg = c.bg_inactive },
  }
end

return M

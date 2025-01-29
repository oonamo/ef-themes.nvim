local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    RenderMarkdownBullet     = { fg = c.accent_0 }, -- horizontal rule
    RenderMarkdownCode       = { bg = c.bg_inactive },
    RenderMarkdownDash       = { fg = c.accent_1 }, -- horizontal rule
    RenderMarkdownTableHead  = { fg = c.prose_table, bold = true },
    RenderMarkdownTableRow   = { fg = c.prose_table },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  }
end

return M

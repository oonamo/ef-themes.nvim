local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { link = "FloatBorder" },
    FzfLuaCursor        = { link = "IncSearch" },
    FzfLuaDirPart       = { fg   = c.fg_dim },
    FzfLuaFilePart      = { link = "FzfLuaFzfNormal" },
    FzfLuaFzfCursorLine = { bg   = c.bg_completion },
    FzfLuaFzfNormal     = { fg   = c.fg_main },
    FzfLuaFzfPointer    = { fg   = c.magenta_cooler },
    FzfLuaFzfSeparator  = { fg   = c.border, bg     = c.bg_dim },
    FzfLuaFzfMatch      = { fg   = c.accent_0, bold = true },
    FzfLuaFzfPrompt     = { fg   = c.prompt },
    FzfLuaHeaderBind    = { link = "@punctuation.special" },
    FzfLuaHeaderText    = { link = "Title" },
    FzfLuaNormal        = { fg   = c.fg_main, bg    = c.bg_dim },
    FzfLuaPath          = { link = "Directory" },
    FzfLuaPreviewTitle  = { fg   = c.border, bg     = c.bg_dim },
    FzfLuaTitle         = { fg   = c.name, bold     = true },
  }
end

return M

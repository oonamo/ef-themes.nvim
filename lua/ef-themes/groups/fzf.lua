local M = {}

function M.get(c, opts)
  return {
    FzfLuaBorder = { link = "FloatBorder" },
    FzfLuaCursor = { link = "IncSearch" },
    FzfLuaDirPart = { fg = c.fg_dim },
    FzfLuaFilePart = { link = "FzfLuaFzfNormal" },
    FzfLuaFzfCursorLine = { bg = c.bg_hl_line },
    FzfLuaFzfNormal = { fg = c.fg_dim },
    FzfLuaFzfPointer = { fg = c.magenta_cooler },
    FzfLuaFzfSeparator = { fg = c.border, bg = c.bg_dim },
    FzfLuaHeaderBind = { link = "@punctuation.special" },
    FzfLuaHeaderText = { link = "Title" },
    FzfLuaNormal = { fg = c.fg, bg = c.bg_float },
    FzfLuaPath = { link = "Directory" },
    FzfLuaPreviewTitle = { fg = c.border, bg = c.bg_dim },
    FzfLuaTitle = { fg = c.name, bold = true },
  }
end

return M

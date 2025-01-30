local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  -- stylua: ignore
  local hls = {
    BlinkCmpDoc                 = { fg = c.fg_main, bg    = c.bg_dim },
    BlinkCmpDocBorder           = { fg = c.border, bg     = c.bg_dim },
    BlinkCmpGhostText           = { fg = c.fg_alt },
    BlinkCmpKindCodeium         = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpKindCopilot         = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpKindDefault         = { fg = c.fg_dim, bg     = "NONE" },
    BlinkCmpKindSupermaven      = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpKindTabNine         = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpLabel               = { fg = c.fg_main, bg    = "NONE" },
    BlinkCmpLabelDeprecated     = { fg = c.fg_dim, bg     = "NONE", strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.accent_0, bg   = "NONE", bold          = true },
    BlinkCmpMenu                = { fg = c.fg_main, bg    = c.bg_inactive },
    BlinkCmpMenuBorder          = { fg = c.border, bg     = c.bg_dim },
    BlinkCmpSignatureHelp       = { fg = c.fg_main, bg    = c.bg_dim },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg     = c.bg_dim },
  }

  require("ef-themes.groups.kinds").kinds(c, hls, "BlinkCmpKind%s")
  return hls
end

return M

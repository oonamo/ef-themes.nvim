local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    BlinkCmpDoc                 = { fg = c.fg, bg         = c.bg_dim },
    BlinkCmpDocBorder           = { fg = c.border, bg     = c.bg_dim },
    BlinkCmpGhostText           = { fg = c.fg_term_black },
    BlinkCmpKindCodeium         = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpKindCopilot         = { fg = c.cyan_faint, bg = "NONE" },
    BlinkCmpKindDefault         = { fg = c.fg_dim, bg     = c.none },
    BlinkCmpKindSupermaven      = { fg = c.cyan_faint, bg = c.none },
    BlinkCmpKindTabNine         = { fg = c.cyan_faint, bg = c.none },
    BlinkCmpLabel               = { fg = c.fg_main, bg    = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_dim, bg     = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.blue, bg       = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg         = c.bg_inactive },
    BlinkCmpMenuBorder          = { fg = c.border, bg     = c.bg_dim },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg         = c.bg_dim },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg     = c.bg_dim },
  }
end

return M

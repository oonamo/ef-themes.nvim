local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  local is_dark = vim.o.bg == "dark"
  local picker = {}
  if opts.styles.pickers == "borderless" then
    picker = {
      MiniPickBorder = { bg = c.bg_dim, fg = c.bg_dim },
      MiniPickBorderBusy = { bg = c.bg_dim, fg = c.bg_dim },
      MiniPickBorderText = { fg = c.name, bg = c.bg_dim, bold = true },
      MiniPickHeader = { fg = c.bg_inactive, bg = c.name },
      MiniPickIconDirectory = { link = "Directory" },
      MiniPickIconFile = { link = "MiniPickNormal" },
      MiniPickMatchCurrent = { bg = c.bg_completion },
      MiniPickMatchMarked = { bg = c.bg_info, bold = true },
      MiniPickMatchRanges = { fg = c.accent_0, bold = true },
      MiniPickNormal = { link = "NormalFloat" },
      MiniPickPreviewLine = { link = "CursorLine" },
      MiniPickPreviewRegion = { link = "IncSearch" },
      MiniPickPrompt = { fg = c.fg_main, bg = c.bg_dim },
    }
  end

  local statusline_fg = is_dark and c.fg_term_black or c.bg_main
  -- stylua: ignore
  return vim.tbl_deep_extend("keep", picker, {
    MiniAnimateCursor             = { reverse   = true, nocombine          = true },
    MiniAnimateNormalFloat        = { link      = "NormalFloat" },

    MiniClueBorder                = { link      = "FloatBorder" },
    MiniClueDescGroup             = { fg        = c.keyword, bg = c.bg_dim },
    MiniClueDescSingle            = { fg        = c.fg_main },
    MiniClueNextKey               = { fg        = c.keybind, bold          = true },
    MiniClueNextKeyWithPostkeys   = { fg        = c.err },
    MiniClueSeparator             = { fg        = c.fg_dim },
    MiniClueTitle                 = { link      = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword                = { underline = true },
    MiniCursorwordCurrent         = { underline = true },

    MiniDepsChangeAdded           = { link      = "diffAdded" },
    MiniDepsChangeRemoved         = { link      = "diffRemoved" },
    MiniDepsHint                  = { link      = "DiagnosticHint" },
    MiniDepsInfo                  = { link      = "DiagnosticInfo" },
    MiniDepsMsgBreaking           = { link      = "DiagnosticWarn" },
    MiniDepsPlaceholder           = { link      = "Comment" },
    MiniDepsTitle                 = { link      = "Title" },
    MiniDepsTitleError            = { fg        = c.err, bg                = c.bg_removed },
    MiniDepsTitleSame             = { link      = "Comment" },
    MiniDepsTitleUpdate           = { fg        = c.yellow, bg             = c.bg_yellow_subtle },

    MiniDiffOverAdd               = { link      = "DiffAdd" },
    MiniDiffOverChange            = { link      = "DiffText" },
    MiniDiffOverContext           = { link      = "DiffChange" },
    MiniDiffOverDelete            = { link      = "DiffDelete" },
    MiniDiffSignAdd               = { fg        = c.fg_added },
    MiniDiffSignChange            = { fg        = c.fg_changed },
    MiniDiffSignDelete            = { fg        = c.fg_removed },

    MiniFilesBorder               = { link      = "FloatBorder" },
    -- MiniFilesBorderModified    = { fg        = c.warning, bg            = c.accent_3 },
    MiniFilesCursorLine           = { link      = "CursorLine" },
    MiniFilesDirectory            = { link      = "Directory" },
    MiniFilesFile                 = { fg        = c.fg_main },
    MiniFilesNormal               = { link      = "NormalFloat" },
    MiniFilesTitle                = { link      = "FloatTitle" },
    MiniFilesTitleFocused         = { fg        = c.name, bg               = c.bg_dim, bold                 = true },

    MiniHipatternsFixme           = { fg        = c.fg_term_black, bg      = c.err, bold                    = true },
    MiniHipatternsHack            = { fg        = c.fg_term_black, bg      = c.warning, bold                = true },
    MiniHipatternsNote            = { fg        = c.fg_term_black, bg      = c.blue, bold                   = true },
    MiniHipatternsTodo            = { fg        = c.fg_term_black, bg      = c.info, bold                   = true },

    MiniIconsAzure                = { fg        = c.blue_warmer },
    MiniIconsBlue                 = { fg        = is_dark and c.blue_faint or c.blue_cooler },
    MiniIconsCyan                 = { fg        = is_dark and c.cyan_faint or c.cyan },
    MiniIconsGreen                = { fg        = is_dark and c.green_faint or c.green_warmer },
    MiniIconsGrey                 = { fg        = is_dark and c.cyan_faint or "gray50" },
    MiniIconsOrange               = { fg        = is_dark and c.red_faint or c.yellow_cooler },
    MiniIconsPurple               = { fg        = is_dark and c.magenta_cooler or c.magenta_faint },
    MiniIconsRed                  = { fg        = is_dark and c.red or c.red_faint },
    MiniIconsYellow               = { fg        = is_dark and c.yellow_faint or c.yellow_warmer },

    MiniIndentscopePrefix         = { nocombine = true }, -- Make it invisible
    MiniIndentscopeSymbol         = { fg        = c.blue_warmer, nocombine = true },

    MiniJump                      = { sp        = c.magenta_warmer, bg     = c.bg_magenta_subtle, undercurl = true },
    MiniJump2dDim                 = { fg        = c.fg_dim },
    MiniJump2dSpot                = { fg        = c.accent_0, underline    = true, bold                     = true, nocombine = true },
    MiniJump2dSpotAhead           = { fg        = c.accent_1, nocombine    = true },
    MiniJump2dSpotUnique          = { fg        = c.red_faint, bg          = c.bg_red_subtle, bold          = true, undercurl = true, sp = c.red },

    MiniMapNormal                 = { link      = "NormalFloat" },
    MiniMapSymbolCount            = { link      = "Special" },
    MiniMapSymbolLine             = { link      = "Title" },
    MiniMapSymbolView             = { link      = "Delimiter" },

    MiniNotifyBorder              = { link      = "FloatBorder" },
    MiniNotifyNormal              = { link      = "NormalFloat" },
    MiniNotifyTitle               = { link      = "FloatTitle" },

    MiniOperatorsExchangeFrom     = { link      = "IncSearch" },

    MiniPickBorder                = { link      = "FloatBorder" },
    MiniPickBorderBusy            = { link      = "DiagnosticFloatingWarn" },
    MiniPickBorderText            = { fg        = c.prompt, bg             = c.bg_dim, bold                 = true },
    MiniPickHeader                = { fg        = c.name, bold             = true },
    MiniPickIconDirectory         = { link      = "Directory" },
    MiniPickIconFile              = { link      = "MiniPickNormal" },
    MiniPickMatchCurrent          = { bg        = c.bg_completion },
    MiniPickMatchMarked           = { bg        = c.bg_info, bold          = true },
    MiniPickMatchRanges           = { fg        = c.accent_0, bold         = true },
    MiniPickNormal                = { link      = "NormalFloat" },
    MiniPickPreviewLine           = { link      = "CursorLine" },
    MiniPickPreviewRegion         = { link      = "IncSearch" },
    MiniPickPrompt                = { fg        = c.fg_main, bg            = c.bg_dim },

    MiniStarterCurrent            = { nocombine = true },
    MiniStarterFooter             = { fg        = c.yellow, italic         = true },
    MiniStarterHeader             = { fg        = c.blue },
    MiniStarterInactive           = { fg        = c.comment, italic        = true },
    MiniStarterItem               = { fg        = c.fg_main, bg            = c.bg_main },
    MiniStarterItemBullet         = { fg        = c.border },
    MiniStarterItemPrefix         = { fg        = c.warning },
    MiniStarterQuery              = { fg        = c.prompt },
    MiniStarterSection            = { fg        = c.fg_main, bold          = true },

    MiniStatuslineDevinfo         = { fg        = c.fg_mode_line, bg       = c.bg_mode_line },
    MiniStatuslineFileinfo        = { fg        = c.fg_mode_line, bg       = c.bg_mode_line },
    MiniStatuslineFilename        = { fg        = c.fg_mode_line, bg       = c.bg_dim },
    MiniStatuslineInactive        = "StatusLineNC",
    MiniStatuslineModeNormal      = { fg        = statusline_fg, bg        = c.rainbow_0, bold              = true },
    MiniStatuslineModeInsert      = { fg        = statusline_fg, bg        = c.modeline_info, bold          = true },
    MiniStatuslineModeCommand     = { fg        = statusline_fg, bg        = c.rainbow_2, bold              = true },
    MiniStatuslineModeOther       = { fg        = statusline_fg, bg        = c.cyan, bold                   = true },
    MiniStatuslineModeReplace     = { fg        = statusline_fg, bg        = c.err, bold                    = true },
    MiniStatuslineModeVisual      = { fg        = statusline_fg, bg        = c.warning, bold                = true },

    MiniSurround                  = { bg        = c.yellow_cooler, fg      = c.fg_term_black },

    MiniTablineCurrent            = { fg        = c.fg_alt, bg             = c.bg_tab_current },
    MiniTablineFill               = { bg        = c.bg_tab_bar },
    MiniTablineHidden             = { fg        = c.fg_main, bg            = c.bg_dim },
    MiniTablineModifiedCurrent    = { fg        = c.warning, bg            = c.bg_warning },
    MiniTablineModifiedHidden     = { bg        = c.bg_mode_line, fg       = c.bg_err },
    MiniTablineModifiedVisible    = { fg        = c.fg_alt, bg             = c.bg_warning },
    MiniTablineTabpagesection     = { bg        = c.fg_dim, fg             = "NONE" },
    MiniTablineVisible            = { fg        = c.fg_main, bg            = c.bg_tab_current },

    MiniTestEmphasis              = { bold      = true },
    MiniTestFail                  = { fg        = c.red, bold              = true },
    MiniTestPass                  = { fg        = c.green, bold            = true },

    MiniTrailspace                = { bg        = c.red },
  })
end

return M

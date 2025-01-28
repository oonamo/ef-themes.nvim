local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniAnimateCursor             = { reverse   = true, nocombine          = true },
    MiniAnimateNormalFloat        = { link      = "NormalFloat" },

    MiniClueBorder                = { link      = "FloatBorder" },
    MiniClueDescGroup             = { fg = c.keyword },
    MiniClueDescSingle            = { fg = c.fg_main },
    MiniClueNextKey               = { fg = c.keybind, bold = true },
    MiniClueNextKeyWithPostkeys   = { fg = c.err },
    MiniClueSeparator             = { fg = c.fg_dim },
    MiniClueTitle                 = { link      = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    -- TODO: Improve these
    MiniCursorword                = { bg        = c.bg_dim },
    MiniCursorwordCurrent         = { bg        = c.bg_dim },

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
    MiniFilesBorderModified       = { link      = "DiagnosticFloatingWarn" },
    MiniFilesCursorLine           = { link      = "CursorLine" },
    MiniFilesDirectory            = { link      = "Directory" },
    MiniFilesFile                 = { fg        = c.fg_dim },
    MiniFilesNormal               = { link      = "NormalFloat" },
    MiniFilesTitle                = { link      = "FloatTitle" },
    MiniFilesTitleFocused         = { fg        = c.border, bg             = c.bg_dim, bold      = true },

    MiniHipatternsFixme           = { fg        = c.fg_term_black, bg      = c.err, bold         = true },
    MiniHipatternsHack            = { fg        = c.fg_term_black, bg      = c.warning, bold     = true },
    MiniHipatternsNote            = { fg        = c.fg_term_black, bg      = c.blue, bold        = true },
    MiniHipatternsTodo            = { fg        = c.fg_term_black, bg      = c.info, bold        = true },

    MiniIconsAzure                = { fg        = c.blue_cooler },
    MiniIconsBlue                 = { fg        = c.blue },
    MiniIconsCyan                 = { fg        = c.cyan_faint },
    MiniIconsGreen                = { fg        = c.green },
    MiniIconsGrey                 = { fg        = c.fg_dim },
    MiniIconsOrange               = { fg        = c.yellow_warmer },
    MiniIconsPurple               = { fg        = c.magenta_cooler },
    MiniIconsRed                  = { fg        = c.red },
    MiniIconsYellow               = { fg        = c.yellow },

    MiniIndentscopePrefix         = { nocombine = true }, -- Make it invisible
    MiniIndentscopeSymbol         = { fg        = c.blue_warmer, nocombine = true },

    MiniJump                      = { bg        = c.magenta_warmer, fg     = "#ffffff" },
    MiniJump2dDim                 = { link      = "Comment" },
    MiniJump2dSpot                = { fg        = c.magenta_warmer, bold   = true, nocombine     = true },
    MiniJump2dSpotAhead           = { fg        = c.info, bg               = c.bg_alt, nocombine = true },
    MiniJump2dSpotUnique          = { fg        = c.accent_0, bold         = true, nocombine     = true, undercurl = true },

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
    MiniPickBorderText            = { fg        = c.prompt, bg             = c.bg_dim, bold      = true },
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
    MiniStatuslineInactive        = { fg        = c.fg_mode_line, bg       = c.bg_mode_line },
    MiniStatuslineModeCommand     = { fg        = c.fg_term_black, bg      = c.yellow, bold      = true },
    MiniStatuslineModeInsert      = { fg        = c.fg_term_black, bg      = c.green, bold       = true },
    MiniStatuslineModeNormal      = { fg        = c.fg_term_black, bg      = c.blue, bold        = true },
    MiniStatuslineModeOther       = { fg        = c.fg_term_black, bg      = c.cyan, bold        = true },
    MiniStatuslineModeReplace     = { fg        = c.fg_term_black, bg      = c.red, bold         = true },
    MiniStatuslineModeVisual      = { fg        = c.fg_term_black, bg      = c.magenta, bold     = true },

    MiniSurround                  = { bg        = c.yellow_cooler, fg      = c.fg_term_black },

    MiniTablineCurrent            = { fg        = c.fg_main, bg            = c.bg_tab_current },
    MiniTablineFill               = { bg        = c.bg_tab_bar },
    MiniTablineHidden             = { fg        = c.fg_main, bg            = c.bg_tab_other },
    MiniTablineModifiedCurrent    = { fg        = c.warning, bg            = c.bg_warning },
    MiniTablineModifiedHidden     = { bg        = c.bg_mode_line, fg       = c.bg_err },
    MiniTablineModifiedVisible    = { fg        = c.fg_alt, bg             = c.bg_warning },
    MiniTablineTabpagesection     = { bg        = c.fg_dim, fg             = "NONE" },
    MiniTablineVisible            = { fg        = c.fg_main, bg            = c.bg_tab_current },

    MiniTestEmphasis              = { bold      = true },
    MiniTestFail                  = { fg        = c.red, bold              = true },
    MiniTestPass                  = { fg        = c.green, bold            = true },

    MiniTrailspace                = { bg        = c.red },
  }
end

return M

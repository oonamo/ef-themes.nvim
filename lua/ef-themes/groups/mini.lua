local M = {}

function M.get(c, opts)
  return {
    -- stylua: ignore start
		MiniAnimateCursor      = { reverse = true, nocombine = true },
		MiniAnimateNormalFloat = { link    = "NormalFloat" },

		MiniClueBorder              = { link = "FloatBorder" },
		MiniClueDescGroup           = { link = "DiagnosticFloatingWarn" },
		MiniClueDescSingle          = { link = "NormalFloat" },
		MiniClueNextKey             = { link = "DiagnosticFloatingHint" },
		MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
		MiniClueSeparator           = { link = "DiagnosticFloatingInfo" },
		MiniClueTitle               = { link = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword        = { bg = c.fg_dim },
    MiniCursorwordCurrent = { bg = c.fg_dim },

		MiniDepsChangeAdded   = { link = "diffAdded" },
		MiniDepsChangeRemoved = { link = "diffRemoved" },
		MiniDepsHint          = { link = "DiagnosticHint" },
		MiniDepsInfo          = { link = "DiagnosticInfo" },
		MiniDepsMsgBreaking   = { link = "DiagnosticWarn" },
		MiniDepsPlaceholder   = { link = "Comment" },
		MiniDepsTitle         = { link = "Title" },
		MiniDepsTitleError    = { fg   = c.err, bg = c.bg_removed },
		MiniDepsTitleSame     = { link = "Comment" },
		MiniDepsTitleUpdate   = { fg   = c.yellow, bg = c.bg_yellow_subtle },

		MiniDiffOverAdd     = { link = "DiffAdd" },
		MiniDiffOverChange  = { link = "DiffText" },
		MiniDiffOverContext = { link = "DiffChange" },
		MiniDiffOverDelete  = { link = "DiffDelete" },
		MiniDiffSignAdd     = { fg   = c.fg_added },
		MiniDiffSignChange  = { fg   = c.fg_changed },
		MiniDiffSignDelete  = { fg   = c.fg_removed },

		MiniFilesBorder         = { link = "FloatBorder" },
		MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
		MiniFilesCursorLine     = { link = "CursorLine" },
		MiniFilesDirectory      = { link = "Directory" },
		MiniFilesFile           = { fg   = c.fg_dim },
		MiniFilesNormal         = { link = "NormalFloat" },
		MiniFilesTitle          = { link = "FloatTitle" },
		MiniFilesTitleFocused   = { fg   = c.border, bg = c.bg_dim, bold = true },

    MiniHipatternsFixme = { fg = c.fg_term_black , bg = c.err, bold = true },
    MiniHipatternsHack  = { fg = c.fg_term_black , bg = c.warning, bold = true },
    MiniHipatternsNote  = { fg = c.fg_term_black , bg = c.blue, bold = true },
    MiniHipatternsTodo  = { fg = c.fg_term_black , bg = c.info, bold = true },

    MiniIconsGrey   = { fg = c.fg_dim },
    MiniIconsPurple = { fg = c.magenta_cooler },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.blue_cooler },
    MiniIconsCyan   = { fg = c.cyan_faint },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsYellow = { fg = c.yellow },
    MiniIconsOrange = { fg = c.yellow_warmer },
    MiniIconsRed    = { fg = c.red },

    MiniIndentscopeSymbol = { fg = c.blue_warmer, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump             = { bg   = c.magenta2, fg         = "#ffffff" },
    MiniJump2dDim        = { link = "Comment" },
    MiniJump2dSpot       = { fg   = c.magenta_warmer, bold = true, nocombine     = true },
    MiniJump2dSpotAhead  = { fg   = c.info, bg             = c.bg_alt, nocombine = true },
    MiniJump2dSpotUnique = { fg   = c.orange, bold         = true, nocombine     = true },

    MiniMapNormal      = { link = "NormalFloat"},
    MiniMapSymbolCount = { link = "Special"},
    MiniMapSymbolLine  = { link = "Title"},
    MiniMapSymbolView  = { link = "Delimiter"},

    MiniNotifyBorder = { link = "FloatBorder"},
    MiniNotifyNormal = { link = "NormalFloat"},
    MiniNotifyTitle  = { link = "FloatTitle"},

    MiniOperatorsExchangeFrom = { link = "IncSearch"},

    MiniPickBorder        = { link = "FloatBorder"},
    MiniPickBorderBusy    = { link = "DiagnosticFloatingWarn"},
    MiniPickBorderText    = { fg = c.hint, bg = c.bg_dim },
    MiniPickIconDirectory = { link = "Directory"},
    MiniPickIconFile      = { link = "MiniPickNormal"},
    MiniPickHeader        = { link = "DiagnosticFloatingHint"},
    MiniPickMatchCurrent  = { link = "CursorLine"},
    MiniPickMatchMarked   = { link = "Visual"},
    MiniPickMatchRanges   = { link = "DiagnosticFloatingHint"},
    MiniPickNormal        = { link = "NormalFloat"},
    MiniPickPreviewLine   = { link = "CursorLine"},
    MiniPickPreviewRegion = { link = "IncSearch"},
    MiniPickPrompt        = { fg = c.prompt, bg = c.bg_dim },

    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.yellow, italic = true },
    MiniStarterHeader     = { fg = c.blue },
    MiniStarterInactive   = { fg = c.comment, italic = true },
    MiniStarterItem       = { fg = c.fg_main, bg = c.bg_main },
    MiniStarterItemBullet = { fg = c.border },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterQuery      = { fg = c.prompt },
    MiniStarterSection    = { fg = c.fg_main, bold = true },

    MiniStatuslineDevinfo     = { fg = c.fg_dim, bg = c.bg_dim },
    MiniStatuslineFileinfo    = { fg = c.fg_dim, bg = c.bg_dim },
    MiniStatuslineFilename    = { fg = c.fg_dim, bg = c.bg_region },
    MiniStatuslineInactive    = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.fg_term_black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert  = { fg = c.fg_term_black, bg = c.green, bold = true },
    MiniStatuslineModeNormal  = { fg = c.fg_term_black, bg = c.blue, bold = true },
    MiniStatuslineModeOther   = { fg = c.fg_term_black, bg = c.cyan, bold = true },
    MiniStatuslineModeReplace = { fg = c.fg_term_black, bg = c.red, bold = true },
    MiniStatuslineModeVisual  = { fg = c.fg_term_black, bg = c.magenta, bold = true },

    MiniSurround = { bg = c.orange, fg = c.fg_term_black },

    MiniTablineCurrent         = { fg = c.fg_main, bg = c.fg_dim },
    MiniTablineFill            = { bg = c.fg_term_black },
    MiniTablineHidden          = { fg = c.alt, bg = c.bg_mode_line },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_dim },
    MiniTablineModifiedHidden  = { bg = c.bg_mode_line, fg = c.bg_err },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_mode_line },
    MiniTablineTabpagesection  = { bg = c.fg_dim, fg = c.none },
    MiniTablineVisible         = { fg = c.fg_main, bg = c.bg_mode_line },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },

    MiniTrailspace = { bg = c.red },
    -- stylua: ignore end
  }
end

return M

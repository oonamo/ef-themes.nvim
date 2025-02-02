local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  local picker = {}
  if opts.styles.pickers == "borderless" then
    picker = {
      SnacksPickerBorder = { fg = c.bg_main, bg = c.bg_main },
      SnacksPickerInput = { fg = c.fg_main, bg = c.bg_dim },
      SnacksPickerInputBorder = { fg = c.bg_dim, bg = c.bg_dim },
      SnacksPickerBoxBorder = { fg = c.bg_dim, bg = c.bg_dim },
      SnacksPickerTitle = { fg = c.bg_main, bg = c.name },
      SnacksPickerBoxTitle = { fg = c.bg_main, bg = c.name },
      SnacksPickerList = { bg = c.bg_dim },
      SnacksPickerPrompt = { fg = c.accent_1, bg = c.bg_dim },
      SnacksPickerPreviewTitle = { fg = c.bg_main, bg = c.accent_1 },
      SnacksPickerPreview = { bg = c.bg_main },
      SnacksPickerToggle = { bg = c.accent_1, fg = c.bg_main },
    }
  else
    picker = {
      SnacksPickerInputBorder = { fg = c.accent_2, bg = c.bg_dim },
      SnacksPickerInputTitle = { fg = c.name, bg = c.bg_dim, bold = true },
      SnacksPickerBoxTitle = { fg = c.name, bg = c.bg_dim, bold = true },
      SnacksPickerSelected = { bg = c.bg_info, bold = true },
      SnacksPickerFlag = "SnacksProfilerBadgeInfo",
      SnacksPickerPreviewCursorLine = { bg = c.bg_completion },
    }
  end
  -- stylua: ignore
  return vim.tbl_deep_extend("force", {
    SnacksNormal                     = { bg = opts.transparent and "NONE" or c.bg_main },
    SnacksNormalNC                   = { bg = opts.transparent and "NONE" or c.bg_main },
    SnacksBackdrop                   = { bg = c.bg_main },

    SnacksNotifierDebug              = { fg = c.fg_main, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierBorderDebug        = { fg = c.border, bg          = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierIconDebug          = { fg = c.comment },
    SnacksNotifierTitleDebug         = { fg = c.comment },
    SnacksNotifierError              = { fg = c.fg_main, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierBorderError        = { fg = c.bg_err, bg          = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierIconError          = { fg = c.err },
    SnacksNotifierTitleError         = { fg = c.err },
    SnacksNotifierInfo               = { fg = c.fg_main, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierBorderInfo         = { fg = c.bg_info, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierIconInfo           = { fg = c.info },
    SnacksNotifierTitleInfo          = { fg = c.info },
    SnacksNotifierTrace              = { fg = c.fg_main, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierBorderTrace        = { fg = c.magenta_cooler, bg  = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierIconTrace          = { fg = c.magenta_cooler },
    SnacksNotifierTitleTrace         = { fg = c.magenta_cooler },
    SnacksNotifierWarn               = { fg = c.fg_main, bg         = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierBorderWarn         = { fg = c.bg_warning, bg      = opts.transparent and "NONE" or c.bg_main },
    SnacksNotifierIconWarn           = { fg = c.warning },
    SnacksNotifierTitleWarn          = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc              = { fg = c.cyan },
    SnacksDashboardFooter            = { fg = c.blue_cooler },
    SnacksDashboardHeader            = { fg = c.blue },
    SnacksDashboardIcon              = { fg = c.blue_cooler },
    SnacksDashboardKey               = { fg = c.yellow_warmer },
    SnacksDashboardSpecial           = { fg = c.magenta_cooler },
    SnacksDashboardDir               = { fg = c.fg_dim },
    -- Profiler
    SnacksProfilerIconInfo           = { bg = c.blue, fg            = c.bg_blue_subtle },
    SnacksProfilerBadgeInfo          = { bg = c.bg_blue_subtle, fg  = c.blue },
    SnacksScratchKey                 = "SnacksProfilerIconInfo",
    SnacksScratchDesc                = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace          = { bg = c.bg_blue_intense, fg = c.fg_dim },
    SnacksProfilerBadgeTrace         = { bg = c.bg_blue_intense, fg = c.fg_dim },
    SnacksIndent                     = { fg = c.fg_dim, nocombine   = true },
    SnacksIndentScope                = { fg = c.accent_1, nocombine = true },
    SnacksZenIcon                    = { fg = c.magenta_cooler },
    SnacksInputIcon                  = { fg = c.blue_cooler },
    SnacksInputBorder                = { fg = c.yellow },
    SnacksInputTitle                 = { fg = c.yellow },

    -- Picker
    SnacksPickerCursorLine           = { bg = c.bg_completion },
    SnacksPickerListCursorLine       = { bg = c.bg_completion },
    SnacksPickerMatch                = { fg = c.accent_0, bold      = true },
  }, picker)
end

return M

return function(name)
  local opts = require("ef-themes.config").extend()

  name = name or (vim.o.bg == "light" and opts.light or opts.dark)

  local c = require("ef-themes.themes").get_palette(name, opts)

  local ef_theme = {}
  local transparent_bg = opts.transparent and "NONE" or c.bg_inactive
  local inactive_transparent_bg = opts.transparent and "NONE" or c.bg_mode_line

  ef_theme.normal = {
    a = { bg = c.rainbow_0, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.rainbow_0 },
    c = { bg = transparent_bg, fg = c.fg_main },
  }

  ef_theme.insert = {
    a = { bg = c.modeline_info, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.modeline_info },
  }

  ef_theme.terminal = {
    a = { bg = c.rainbow_1, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.rainbow_1 },
  }

  ef_theme.command = {
    a = { bg = c.rainbow_2, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.rainbow_2 },
  }

  ef_theme.visual = {
    a = { bg = c.warning, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.warning },
  }

  ef_theme.replace = {
    a = { bg = c.err, fg = c.bg_dim, gui = "bold" },
    b = { bg = c.bg_dim, fg = c.err },
  }

  ef_theme.inactive = {
    a = { bg = inactive_transparent_bg, fg = c.fg_mode_line },
    b = { bg = inactive_transparent_bg, fg = c.fg_mode_line, gui = "bold" },
    c = { bg = inactive_transparent_bg, fg = c.fg_mode_line },
  }

  return ef_theme
end

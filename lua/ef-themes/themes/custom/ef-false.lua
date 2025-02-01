local tint = vim.deepcopy(require("ef-themes.themes.custom.ef-tint"))

tint.palette.bg_main = "#292d3e"
tint.palette.bg_active = "bg-main"

tint.palette.fg_main = "#eeffff"

tint.palette.fg_intense = tint.palette.fg_main
tint.palette.fg_dim = "gray50"

tint.palette.fg_mode_line = "#ffffff"
tint.palette.bg_mode_line = "#232635"

tint.palette.bg_tab_other = "#242837"
tint.palette.bg_tab_current = "bg-main"
tint.palette.bg_tab_other = "#242837"
tint.palette.prompt = "#c792ea"
tint.palette.bg_hover_secondary = "#676e95"
tint.palette.bg_completion = "#2f447f"
tint.palette.bg_region = "#3c435e"

tint.palette.accent_1 = "#79a8ff"

tint.palette.keyword = "#89ddff"
tint.palette.builtin = "#82aaff"
tint.palette.comment = "#676e95"
tint.palette.string = "#c3e88d"
tint.palette.fnname = "#82aaff"
tint.palette.type = "#c792ea"
tint.palette.variable = "#ffcb6b"
tint.palette.docstring = "#8d92af"
tint.palette.constant = "#f78c6c"

local old = tint.gen_on_highlights

---@diagnostic disable-next-line: duplicate-set-field
tint.gen_on_highlights = function(opts)
  return function(...)
    local ret = {
      StatusLineNC = {
        fg = "#676e95",
        bg = "#282c39",
      },
      markdownH1 = { fg = "#82aaff", bold = true },
      markdownH2 = { fg = "#c792ea", bold = true },
      markdownH3 = { fg = "#bb80b3", bold = true },
      markdownH4 = { fg = "#a1bfff", bold = true },
    }

    local old_hls = old(opts)(...)

    return vim.tbl_deep_extend("force", old_hls or {}, ret or {})
  end
end

return tint

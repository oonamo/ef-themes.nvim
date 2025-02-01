local M = {}

function M.gen_on_colors(opts)
  return function(colors) end
end

function M.gen_on_highlights(opts)
  return function(_, colors)
    return {
      Title = { fg = colors.rainbow_1, bold = true },
    }
  end
end

---@type Ef-Theme
M.palette = {
  bg_main = "#292d3e",
  fg_main = "#eeffff",
  bg_dim = "#1a202b",
  fg_dim = "#70819f",
  bg_alt = "#242e39",
  fg_alt = "#c6daff",
  bg_active = "#444e59",
  bg_inactive = "#11141f",
  red = "#ff5f59",
  red_warmer = "#ff6b55",
  red_cooler = "#ff7f86",
  red_faint = "#ff8f80",
  green = "#44bc44",
  green_warmer = "#70b900",
  green_cooler = "#00c06f",
  green_faint = "#88ca9f",
  yellow = "#d0bc00",
  yellow_warmer = "#fec43f",
  yellow_cooler = "#dfaf7a",
  yellow_faint = "#d2b580",
  blue = "#2fafff",
  blue_warmer = "#79a8ff",
  blue_cooler = "#00bcff",
  blue_faint = "#82b0ec",
  magenta = "#feacd0",
  magenta_warmer = "#f78fe7",
  magenta_cooler = "#b6a0ff",
  magenta_faint = "#caa6df",
  cyan = "#00d3d0",
  cyan_warmer = "#4ae2f0",
  cyan_cooler = "#6ae4b9",
  cyan_faint = "#9ac8e0",
  bg_red_intense = "#9d1f1f",
  bg_green_intense = "#2f822f",
  bg_yellow_intense = "#7a6100",
  bg_blue_intense = "#1640b0",
  bg_magenta_intense = "#7030af",
  bg_cyan_intense = "#2277ae",
  bg_red_subtle = "#620f2a",
  bg_green_subtle = "#00422a",
  bg_yellow_subtle = "#4a4000",
  bg_blue_subtle = "#242679",
  bg_magenta_subtle = "#552f5f",
  bg_cyan_subtle = "#005065",
  bg_added = "#004a2f",
  bg_added_faint = "#002922",
  bg_added_refine = "#035542",
  fg_added = "#a0e0a0",
  bg_changed = "#363300",
  bg_changed_faint = "#2a1f00",
  bg_changed_refine = "#4a4a00",
  fg_changed = "#efef80",
  bg_removed = "#4f1127",
  bg_removed_faint = "#380a19",
  bg_removed_refine = "#641426",
  fg_removed = "#ffbfbf",
  bg_graph_red_0 = "#b52c2c",
  bg_graph_red_1 = "#702020",
  bg_graph_green_0 = "#0fed00",
  bg_graph_green_1 = "#007800",
  bg_graph_yellow_0 = "#f1e00a",
  bg_graph_yellow_1 = "#b08940",
  bg_graph_blue_0 = "#2fafef",
  bg_graph_blue_1 = "#1f2f8f",
  bg_graph_magenta_0 = "#bf94fe",
  bg_graph_magenta_1 = "#5f509f",
  bg_graph_cyan_0 = "#47dfea",
  bg_graph_cyan_1 = "#00808f",
  bg_mode_line = "#484d67",
  fg_mode_line = "#ffffff",
  bg_completion = "#483d8a",
  bg_hover = "#45605e",
  bg_hover_secondary = "#654a39",
  bg_hl_line = "#303a6f",
  bg_paren = "#5f789f",
  bg_err = "#471014",
  bg_warning = "#3b2f04",
  bg_info = "#103512",
  border = "#61647a",
  cursor = "#ff66ff",
  fg_intense = "#ffffff",
  modeline_err = "#ffa8bf",
  modeline_warning = "#dfcf43",
  modeline_info = "#9fefff",
  underline_err = "red",
  underline_warning = "yellow",
  underline_info = "cyan",
  bg_char_0 = "#0050af",
  bg_char_1 = "#7f1f7f",
  bg_char_2 = "#625a00",
  bg_fringe = "unspecified",
  fg_fringe = "unspecified",
  err = "red",
  warning = "yellow-warmer",
  info = "green-cooler",
  link = "blue-warmer",
  link_alt = "magenta",
  name = "magenta",
  keybind = "magenta-cooler",
  identifier = "yellow-faint",
  prompt = "cyan-cooler",
  bg_region = "#555a66",
  fg_region = "NONE",
  builtin = "magenta-warmer",
  comment = "red-faint",
  constant = "blue-cooler",
  fnname = "magenta",
  keyword = "magenta-cooler",
  preprocessor = "red-cooler",
  docstring = "cyan-faint",
  string = "blue-warmer",
  type = "cyan-cooler",
  variable = "cyan",
  rx_escape = "magenta",
  rx_construct = "green-cooler",
  accent_0 = "blue-cooler",
  accent_1 = "magenta-warmer",
  accent_2 = "cyan-cooler",
  accent_3 = "red-cooler",
  date_common = "cyan",
  date_deadline = "red",
  date_deadline_subtle = "red-faint",
  date_event = "fg-alt",
  date_holiday = "magenta-warmer",
  date_now = "fg-main",
  date_range = "fg-alt",
  date_scheduled = "yellow",
  date_scheduled_subtle = "yellow-faint",
  date_weekday = "cyan",
  date_weekend = "red-faint",
  prose_code = "cyan-cooler",
  prose_done = "green",
  prose_macro = "magenta-cooler",
  prose_metadata = "fg-dim",
  prose_metadata_value = "fg-alt",
  prose_table = "fg-alt",
  prose_table_formula = "info",
  prose_tag = "fg-alt",
  prose_todo = "red",
  prose_verbatim = "magenta-warmer",
  mail_cite_0 = "blue",
  mail_cite_1 = "magenta-warmer",
  mail_cite_2 = "green-cooler",
  mail_cite_3 = "yellow-cooler",
  mail_part = "cyan",
  mail_recipient = "blue-warmer",
  mail_subject = "cyan-cooler",
  mail_other = "cyan-warmer",
  bg_search_match = "bg-warning",
  bg_search_current = "bg-yellow-intense",
  bg_search_lazy = "bg-cyan-intense",
  bg_search_replace = "bg-red-intense",
  bg_search_rx_group_0 = "bg-blue-intense",
  bg_search_rx_group_1 = "bg-cyan-intense",
  bg_search_rx_group_2 = "bg-red-subtle",
  bg_search_rx_group_3 = "bg-magenta-subtle",
  bg_space = "unspecified",
  fg_space = "border",
  bg_space_err = "bg-red-intense",
  bg_tab_bar = "#2c3045",
  bg_tab_current = "#0d0e1c",
  bg_tab_other = "#4a4f6a",
  bg_term_black = "black",
  fg_term_black = "black",
  bg_term_black_bright = "gray35",
  fg_term_black_bright = "gray35",
  bg_term_red = "red",
  fg_term_red = "red",
  bg_term_red_bright = "red-warmer",
  fg_term_red_bright = "red-warmer",
  bg_term_green = "green",
  fg_term_green = "green",
  bg_term_green_bright = "green-warmer",
  fg_term_green_bright = "green-warmer",
  bg_term_yellow = "yellow",
  fg_term_yellow = "yellow",
  bg_term_yellow_bright = "yellow-warmer",
  fg_term_yellow_bright = "yellow-warmer",
  bg_term_blue = "blue",
  fg_term_blue = "blue",
  bg_term_blue_bright = "blue-warmer",
  fg_term_blue_bright = "blue-warmer",
  bg_term_magenta = "magenta",
  fg_term_magenta = "magenta",
  bg_term_magenta_bright = "magenta-cooler",
  fg_term_magenta_bright = "magenta-cooler",
  bg_term_cyan = "cyan",
  fg_term_cyan = "cyan",
  bg_term_cyan_bright = "cyan-cooler",
  fg_term_cyan_bright = "cyan-cooler",
  bg_term_white = "#a6a6a6",
  fg_term_white = "#a6a6a6",
  bg_term_white_bright = "#ffffff",
  fg_term_white_bright = "#ffffff",
  rainbow_0 = "fg-main",
  rainbow_1 = "magenta",
  rainbow_2 = "cyan",
  rainbow_3 = "red-warmer",
  rainbow_4 = "yellow",
  rainbow_5 = "magenta-cooler",
  rainbow_6 = "green",
  rainbow_7 = "blue-warmer",
  rainbow_8 = "magenta-warmer",
  COLOR_NAME = "HEX-VALUE",
  MAPPING_NAME = "COLOR-NAME",
  info_link = "(ef-themes) Palette overrides",
}

return M

local Palette = {}

function Palette.__resolve_individual(palette, key)
  if key:sub(1, 1) == "#" then return key end

  if palette[key] then return Palette.__resolve_individual(palette, palette[key]) end

  local key_name = key:gsub("%-", "_")
  if palette[key_name] then return Palette.__resolve_individual(palette, palette[key_name]) end

  return key == "unspecified" and "NONE" or key
end

function Palette._resolve_palette(palette)
  local resolved = {}
  for k, v in pairs(palette) do
    resolved[k] = Palette.__resolve_individual(palette, v)
  end

  return resolved
end

function Palette.__compatability_layer(name, palette)
  local is_dark = require("ef-themes").is_dark(name)

  -- https://github.com/protesilaos/ef-themes/blob/e1f617607a5f0692b398365dcd8412ba1e98ccb3/ef-arbutus-theme.el#L181
  palette["bg_search_match"] = palette["bg_search_static"]

  -- https://github.com/protesilaos/modus-themes/blob/21ffe0cd5a65365499c2e2d21a728de3cf5a7082/modus-themes.el#L7837-L7845
  palette["bg_term_black"] = palette[is_dark and "bg_main" or "fg_main"]
  palette["bg_term_black_bright"] = palette[is_dark and "bg_active" or "fg_dim"]
  palette["fg_term_black"] = palette[is_dark and "bg_main" or "fg_main"]
  palette["fg_term_black_bright"] = palette[is_dark and "bg_active" or "fg_dim"]

  palette["bg_term_white"] = palette[is_dark and "fg_dim" or "bg_active"]
  palette["bg_term_white_bright"] = palette[is_dark and "fg_main" or "bg_main"]
  palette["fg_term_white"] = palette[is_dark and "fg_dim" or "bg_active"]
  palette["fg_term_white_bright"] = palette[is_dark and "fg_main" or "bg_main"]

  -- https://github.com/protesilaos/modus-themes/blob/21ffe0cd5a65365499c2e2d21a728de3cf5a7082/modus-themes.el#L648-L682
  palette["bg_term_red"] = palette["red"]
  palette["fg_term_red"] = palette["red"]
  palette["bg_term_red_bright"] = palette["red_warmer"]
  palette["fg_term_red_bright"] = palette["red_warmer"]

  palette["bg_term_green"] = palette["green"]
  palette["fg_term_green"] = palette["green"]
  palette["bg_term_green_bright"] = palette["green_warmer"]
  palette["fg_term_green_bright"] = palette["green_warmer"]

  palette["bg_term_yellow"] = palette["yellow"]
  palette["fg_term_yellow"] = palette["yellow"]
  palette["bg_term_yellow_bright"] = palette["yellow_warmer"]
  palette["fg_term_yellow_bright"] = palette["yellow_warmer"]

  palette["bg_term_blue"] = palette["blue"]
  palette["fg_term_blue"] = palette["blue"]
  palette["bg_term_blue_bright"] = palette["blue_warmer"]
  palette["fg_term_blue_bright"] = palette["blue_warmer"]

  palette["bg_term_magenta"] = palette["magenta"]
  palette["fg_term_magenta"] = palette["magenta"]
  palette["bg_term_magenta_bright"] = palette["magenta_warmer"]
  palette["fg_term_magenta_bright"] = palette["magenta_warmer"]

  palette["bg_term_cyan"] = palette["cyan"]
  palette["fg_term_cyan"] = palette["cyan"]
  palette["bg_term_cyan_bright"] = palette["cyan_warmer"]
  palette["fg_term_cyan_bright"] = palette["cyan_warmer"]

  -- https://github.com/protesilaos/modus-themes/blob/21ffe0cd5a65365499c2e2d21a728de3cf5a7082/modus-themes.el#L7800-L7802
  palette["bg_tab_bar"] = palette["bg_dim"]
  palette["bg_tab_current"] = palette["bg_main"]
  palette["bg_tab_other"] = palette["bg_inactive"]

  -- https://github.com/protesilaos/ef-themes/blob/e1f617607a5f0692b398365dcd8412ba1e98ccb3/ef-trio-dark-theme.el#L104-L105
  palette["bg_mode_line"] = palette["bg_mode_line_active"]
  palette["fg_mode_line"] = palette["fg_mode_line_active"]

  return palette
end

---@param name string
---@param opts Ef-Themes.Config
---@return Ef-Theme
function Palette.get_palette(name, opts)
  opts = opts or {}

  local ok, palette = pcall(require, "ef-themes.themes." .. name)
  if not ok then
    ok, palette = require("ef-themes.themes.custom").get(name, opts)
  end

  if not ok then error(string.format("Palette theme '%s' does not exist", name)) end

  palette = Palette.__compatability_layer(name, palette)

  if opts then opts.on_colors(palette, name) end

  return Palette._resolve_palette(palette)
end

return Palette

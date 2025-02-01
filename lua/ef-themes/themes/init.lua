local Palette = {}

function Palette.__resolve_individual(palette, key)
  if key:sub(1, 1) == "#" then return key end

  if palette[key] then return Palette.__resolve_individual(palette, palette[key]) end

  local key_name = key:gsub("%-", "_")
  if palette[key_name] then return Palette.__resolve_individual(palette, palette[key_name]) end

  return "NONE"
end

function Palette._resolve_palette(palette)
  local resolved = {}
  for k, v in pairs(palette) do
    resolved[k] = Palette.__resolve_individual(palette, v)
  end

  return resolved
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

  if opts then opts.on_colors(palette, name) end

  return Palette._resolve_palette(palette)
end

return Palette

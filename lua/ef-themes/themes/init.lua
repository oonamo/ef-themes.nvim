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
  local palette = require("ef-themes.themes." .. name)

  if opts then opts.on_colors(palette, name) end

  return Palette._resolve_palette(palette)
end

return Palette

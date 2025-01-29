local Palette = {}

function Palette._resolve_palette(palette)
  for k, v in pairs(palette) do
    if v:sub(1, 1) ~= "#" then
      local key_name = v:gsub("-", "_")
      if palette[key_name] then
        palette[k] = palette[key_name]
      elseif key_name == "unspecified" then
        palette[k] = "NONE"
      end
    end
  end

  return palette
end

---@param name string
---@param opts Ef-themes.Config
---@return Ef-Theme
function Palette.get_palette(name, opts)
  local palette = require("ef-themes.themes." .. name)

  if opts then opts.on_colors(palette, name) end

  return Palette._resolve_palette(palette)
end

return Palette

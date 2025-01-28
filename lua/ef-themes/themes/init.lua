local M = {}

function M._resolve_palette(palette)
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
function M.get_palette(name, opts)
  local palette = require("ef-themes.themes." .. name)

  if opts then opts.on_colors(palette, name) end

  return M._resolve_palette(palette)
end

return M

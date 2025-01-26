local M = {}

local test_value = function(value)
  local ok, err = pcall(vim.api.nvim_set_hl, 0, "dummy_test", { bg = value })
  return ok
end

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

function M.get_palette(name)
  local palette = require("ef-themes.themes." .. name)
  return M._resolve_palette(palette)
end

return M

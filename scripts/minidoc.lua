local minidoc = require("mini.doc")
if _G.MiniDoc == nil then minidoc.setup() end

local hooks = vim.deepcopy(MiniDoc.default_hooks)

hooks.write_pre = function(lines)
  -- Remove first two lines with `======` and `------` delimiters to comply
  -- with `:h local-additions` template
  table.remove(lines, 1)
  table.remove(lines, 1)
  return lines
end

MiniDoc.generate({
  "lua/ef-themes/init.lua",
  "lua/ef-themes/config.lua",
  "lua/ef-themes/types.lua",
}, nil, { hooks = hooks })

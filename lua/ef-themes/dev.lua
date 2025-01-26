--- Dev file
local M = {}

local function reload()
  for k in pairs(package.loaded) do
    if k:match("^ef-themes") then package.loaded[k] = nil end
  end
end

function M.reset() reload() end

return M

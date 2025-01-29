--- Dev file
local Dev = {}

local function reload()
  for k in pairs(package.loaded) do
    if k:match("^ef-themes") then package.loaded[k] = nil end
  end
end

function Dev.reset() reload() end

return Dev

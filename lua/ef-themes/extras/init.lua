local M = {
  extras = {
    wezterm = { ext = "toml", name = "Wezterm" },
    lazygit = { ext = "yaml", name = "LazyGit" },
    vimium = { ext = "css", name = "Vimium" },
    yazi = { ext = "toml", name = "Yazi" },
  },
}

local Utils = require("ef-themes.utils")

function M.substitute(template, name, palette)
  return template:gsub("($%b{})", function(v)
    local subbed = v:sub(3, -2)
    if subbed == "_name" then return name end
    return palette[subbed]
  end)
end

function M.generate(name, palette)
  for k, v in pairs(M.extras) do
    local template = require("ef-themes.extras." .. k).template()
    local parsed = M.substitute(template, name, palette)

    Utils.write(string.format("extras/%s/%s.%s", k, name, v.ext), parsed)
  end
end

return M

local M = {
  extras = { fzf = { ext = "sh", name = "Fzf" },
    ghostty = { ext = "", name = "Ghostty" },
    lazygit = { ext = "yaml", name = "LazyGit" },
    vimium = { ext = "css", name = "Vimium" },
    wezterm = { ext = "toml", name = "Wezterm" },
    windows_terminal = { ext = "json", name = "Windows Terminal" },
    kitty = { ext = "conf", name = "Kitty" },
    yazi = { ext = "toml", name = "Yazi" },
  },
}

local Utils = require("ef-themes.utils")

function M.substitute(template, name, palette)
  return template:gsub("($%b{})", function(v)
    local subbed = v:sub(3, -2)
    if subbed == "_name" then return name end
    assert(palette[subbed], string.format("'%s' does not exist in ef-theme", subbed))
    return palette[subbed]
  end)
end

function M.generate(name, palette)
  for k, v in pairs(M.extras) do
    print("[Generating Extra]", v.name)
    local template = require("ef-themes.extras." .. k).template()
    local parsed = M.substitute(template, name, palette)

    local write_path = string.format("extras/%s/%s.%s", k, name, v.ext)
    if v.ext == "" then write_path = write_path:sub(1, -2) end

    print("[write]", write_path)
    Utils.write(write_path, parsed)
  end
end

return M

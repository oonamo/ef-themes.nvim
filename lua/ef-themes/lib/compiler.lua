local fmt = string.format
local utils = require("ef-themes.utils")

local M = {}

local function inspect(t)
  local list = {}
  for k, v in pairs(t) do
    local q = type(v) == "string" and [["]] or ""
    table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
  end

  table.sort(list)
  return fmt([[{ %s }]], table.concat(list, ", "))
end

M.compile = function(opts, highlights, theme_opts)
  vim.notify(fmt("[Ef-themes]: Compiling '%s'", theme_opts.name), vim.log.levels.INFO)

  local lines = {
    fmt(
      [[
return string.dump(function()
local h = vim.api.nvim_set_hl
if vim.g.colors_name then vim.cmd("hi clear") end
vim.o.termguicolors = true
vim.g.colors_name = "%s"
vim.o.background = "%s"
  ]],
      theme_opts.name,
      theme_opts.bg
    ),
  }
  for i = 0, 15 do
    table.insert(lines, fmt([[vim.g.terminal_color_%d = "%s"]], i, vim.g["terminal_color_" .. i]))
  end

  for name, val in pairs(highlights) do
    if val.link and val.link ~= "" then
      table.insert(lines, fmt([[h(0, "%s", { link = "%s" })]], name, val.link))
    else
      table.insert(lines, fmt([[h(0, "%s", %s)]], name, inspect(val)))
    end
  end

  local write_path = fmt("%s/%s.lua", opts.options.compile_path, theme_opts.name)

  table.insert(lines, "end)")

  local f = loadstring(table.concat(lines, "\n"), "=")
  if not f then error("could not create load string") end

  if vim.g.ef_themes_debug then utils.write("debug", table.concat(lines, "\n")) end

  utils.write_byte(write_path, f())
end

local bitop = bit
assert(
  bitop,
  [[
Ef-themes requires the 'bit' library to be enabled. If this affects you, disable the compile feature.
Please make an issue if this is something that impacts you
]]
)

-- https://theartincode.stanis.me/008-djb2/
local function djb2(s)
  local h = 5381
  for i = 1, #s do
    h = bitop.lshift(h, 5) + h + string.byte(s, i) -- h * 33 + c
  end
  return h
end

-- Reference: https://github.com/catppuccin/nvim/blob/bad9c23f12944683cd11484d9570560849efc101/lua/catppuccin/lib/hashing.lua
function M.hash(x)
  local t = type(x)
  if t == "table" then
    local h = 0
    for k, v in next, x do
      h = bitop.bxor(h, djb2(k .. M.hash(v)))
    end
    return h
  elseif t == "function" then
    return djb2(string.dump(x))
  end
  return tostring(x)
end

return M

local M = {}

function M.parse_theme(in_file_path, out_file_path)
  local f = io.open(in_file_path, "r")
  local out = io.open(out_file_path, "w")
  print(out_file_path)
  if not f then return print("could not open file " .. in_file_path) end
  if not out then return print("could not create file " .. out_file_path) end

  out:write([[return {]], "\n")

  while true do
    local line = f:read()
    if line == nil then break end
    local name, hl = line:match('%(([%w-]+)%s*(".*")%)')
    if not name or not hl then
      name, hl = line:match("%(([%w-]+)%s*([%w-]+)%)")
      if hl then hl = '"' .. hl .. '"' end
    end

    if name and hl then
      name, _ = name:gsub("-", "_")
      out:write(string.format("\t%s = %s,", name, hl), "\n")
    end
  end

  out:write([[}]])
  out:close()
  f:close()
end

local sep = package.config:sub(1, 1)
local base_path = debug.getinfo(1).source:sub(2, string.len("./parse.lua") * -1) .. sep

function M.get_all_ef_themes()
  local raw_themes_path = base_path .. "raw_themes" .. sep
  local themes = vim.fn.readdir(raw_themes_path)
  if not themes then return error("") end

  local ef_themes = {}
  for _, theme in ipairs(themes) do
    local theme_name = theme:match("(.*%.el)")
    if theme_name and theme_name ~= "ef-themes.el" and theme_name:sub(1, 1) ~= "." then
      table.insert(ef_themes, theme_name)
    end
  end
  return ef_themes, raw_themes_path
end

function M._is_dark(name)
  for _, v in ipairs(require("ef-themes").list.dark or {}) do
    if v == name then return true end
  end
  return false
end

function M._create_color(name)
  local sub_path = string.sub(base_path, 1, string.len("/lua/ef-themes/") * -1)
  local path = sub_path .. "colors" .. sep .. name:gsub("-?theme%.el", "%.lua")
  local out = io.open(path, "w")
  if not out then error("could not create theme " .. name) end
  local theme_name = name:gsub("-?theme%.el", "")
  local is_dark = M._is_dark(theme_name)
  out:write(
    string.format([[require("ef-themes").load({ name = "%s", bg = "%s" })]], theme_name, is_dark and "dark" or "light")
  )
  out:close()
end

function M.write_all_themes()
  local ef_themes, path = M.get_all_ef_themes()
  for _, ef_theme in ipairs(ef_themes or {}) do
    M.parse_theme(path .. ef_theme, base_path .. "themes" .. sep .. ef_theme:gsub("-?theme%.el", "%.lua"))
    M._create_color(ef_theme)
  end
end

function M.write_all_extras()
  local list = require("ef-themes").list
  for _, theme in ipairs(list.dark) do
    print("[Generating]", theme)
    local palette = require("ef-themes.themes").get_palette(theme)
    require("ef-themes.extras").generate(theme, palette)
  end
  for _, theme in ipairs(list.light) do
    print("[Generating]", theme)
    local palette = require("ef-themes.themes").get_palette(theme)
    require("ef-themes.extras").generate(theme, palette)
  end
end

-- stylua: ignore
-- HACK: Until ci is created,
-- visual select the `dofile` line and do :source
local function run_local()
  dofile(vim.api.nvim_buf_get_name(0))
end

-- M.write_all_themes()
M.write_all_extras()

return M

local M = {}

local utils = require("ef-themes.utils")

function M.parse_theme(in_file_path, out_file_path)
  local f = io.open(in_file_path, "r")
  local out = io.open(out_file_path, "w")
  print(out_file_path)
  if not f then return print("could not open file " .. in_file_path) end
  if not out then return print("could not create file " .. out_file_path) end

  out:write([[-- stylua: ignore ]], "\n", [[return {]], "\n")

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
local this_file_path = debug.getinfo(1).source:sub(2, string.len("./parse.lua") * -1) .. sep
local base_path = this_file_path:sub(1, string.len("/lua/ef-themes/lib/") * -1)

function M.get_all_ef_themes()
  local raw_themes_path = base_path .. "raw_themes" .. sep
  local ok, themes = pcall(vim.fn.readdir, raw_themes_path)

  if not ok then return print("raw themes do not exist!") end

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

function M._create_color(name, colors_is_dark)
  local sub_path = base_path
  local path = sub_path .. "colors" .. sep .. name:gsub("-?theme%.el", "") .. ".lua"
  local out = io.open(path, "w")
  if not out then error("could not create theme " .. name) end
  local theme_name = name:gsub("-?theme%.el", "")
  local is_dark = colors_is_dark ~= nil and colors_is_dark or M._is_dark(theme_name)
  out:write(
    string.format([[require("ef-themes").load({ name = "%s", bg = "%s" })]], theme_name, is_dark and "dark" or "light")
  )
  out:close()
end

function M.write_all_themes()
  local ef_themes, path = M.get_all_ef_themes()

  local lualine_folder = vim.fs.joinpath(base_path, "lua", "lualine", "themes")
  local output_folder = vim.fs.joinpath(base_path, "lua", "ef-themes", "themes")

  local function create_lualine_theme(theme)
    print("[lualine]", theme)
    local theme_file = vim.fs.joinpath(lualine_folder, theme .. ".lua")
    print("[write (lualine)]", theme_file)

    local contents = string.format([[return require("ef-themes.lib.lualine")("%s")]], theme) .. "\n"
    utils.write(theme_file, contents)
  end

  for _, ef_theme in ipairs(ef_themes or {}) do
    local theme_name = ef_theme:gsub("-?theme%.el", "")
    M.parse_theme(path .. ef_theme, vim.fs.joinpath(output_folder, theme_name .. ".lua"))
    M._create_color(ef_theme)

    create_lualine_theme(theme_name)
  end

  for theme_name, custom_ef_theme in pairs(require("ef-themes.themes.custom").list) do
    M._create_color(theme_name, custom_ef_theme.bg == "dark")
    create_lualine_theme(theme_name)
  end
end

function M.write_all_extras()
  local default_config = require("ef-themes.config").get_default()

  local list = require("ef-themes").list
  for _, theme in ipairs(list.dark) do
    print("[Generating]", theme)
    local palette = require("ef-themes.themes").get_palette(theme, default_config)
    require("ef-themes.extras").generate(theme, palette)
  end
  for _, theme in ipairs(list.light) do
    print("[Generating]", theme)
    local palette = require("ef-themes.themes").get_palette(theme, default_config)
    require("ef-themes.extras").generate(theme, palette)
  end

  local custom_list = require("ef-themes.themes.custom").list

  for theme, _ in pairs(custom_list) do
    print("[Generating]", theme)
    local palette = require("ef-themes.themes").get_palette(theme, default_config)
    require("ef-themes.extras").generate(theme, palette)
  end
end

function M.build()
  local ok, err = pcall(M.write_all_themes)
  if not ok then print("Error while building themes", err) end

  M.write_all_extras()
  require("ef-themes.lib.docgen").gen_readme()
end

return M

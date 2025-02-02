local M = {}

function M.gen_colornames(do_dark)
  local light_themes = vim.deepcopy(require("ef-themes").list.light)
  local dark_themes = vim.deepcopy(require("ef-themes").list.dark)

  local custom_themes = vim.deepcopy(require("ef-themes.themes.custom").list)

  local list = require("ef-themes").list[do_dark and "dark" or "light"]

  local ret = {}
  for _, name in ipairs(list) do
    local formatted_name = string.format("`%s`", name)
    table.insert(ret, formatted_name)
  end

  for name, val in pairs(custom_themes) do
    local formatted_name = string.format("`%s` (custom)", name)
    if val.bg == "dark" and do_dark then
      table.insert(ret, formatted_name)
      if val.info then table.insert(ret, { val.info }) end
    elseif val.bg == "light" and not do_dark then
      table.insert(ret, formatted_name)
      if val.info then table.insert(ret, { val.info }) end
    end
  end

  return ret
end

---@param style "help"|"readme"
---@return string[]
function M.gen_modules(style)
  style = style or "help"
  local fmt = string.format

  local function format_str(modname, data)
    if style == "help" then return fmt("* `%s` -> `{ %s = %s }`", data.label, modname, vim.inspect(data.default)) end
    if not data.url then return fmt("| %s | %s |", data.label, modname) end
    return fmt(" | [%s](%s) | %s |", data.label, data.url, modname)
  end

  local ret = {}
  if style == "help" then
    table.insert(ret, "* `Plugin` -> `Default`")
    table.insert(ret, "")
  else
    table.insert(ret, "")
    table.insert(ret, "| Plugin | Source |")
    table.insert(ret, "|:--:|:--:|")
  end

  local modules = require("ef-themes.groups").groups
  local modules_keys = vim.tbl_keys(modules)
  table.sort(modules_keys)

  for _, modname in ipairs(modules_keys) do
    local info = modules[modname]
    table.insert(ret, format_str(modname, info))
  end

  table.insert(ret, "")

  if style == "help" then return require("mini.align").align_strings(ret, {
    split_pattern = "->",
  }) end
  return ret
end

function M.gen_extras()
  local extras = require("ef-themes.extras").extras
  local names = vim.tbl_keys(extras)
  table.sort(names)

  local lines = {
    "| Tool | Extra |",
    "|:--:|:--:|",
  }

  for _, name in ipairs(names) do
    local info = extras[name]
    table.insert(
      lines,
      string.format(
        "| [%s](%s) | [extras/%s](https://github.com/oonamo/ef-themes.nvim/tree/main/extras/%s) |",
        info.label,
        info.url,
        name,
        name
      )
    )
  end

  table.insert(lines, "")

  return lines
end

function M.gen_readme()
  local Utils = require("ef-themes.utils")
  local readme_file = vim.fn.fnamemodify(debug.getinfo(1).source:sub(2), ":p:h:h:h:h") .. "/README.md"
  local readme = Utils.read(readme_file, "*a")

  local sub_start_end_block = function(name, with)
    local old_length = #readme
    local pattern = string.format("(<%%!%%-%%- %s:start %%-%%->).*(<%%!%%-%%- %s:end %%-%%->)", name, name)
    readme = readme:gsub(pattern, "%1\n" .. with .. "\n%2")

    assert(#readme >= old_length, "The file did not correctly add the extras")
    print("old_length", old_length, "new_length", #readme)
  end

  local modules = M.gen_modules("readme")
  local extras = M.gen_extras()

  sub_start_end_block("modules", table.concat(modules, "\n"))
  sub_start_end_block("extras", table.concat(extras, "\n"))

  Utils.write(readme_file, readme, "w+")
end

return M

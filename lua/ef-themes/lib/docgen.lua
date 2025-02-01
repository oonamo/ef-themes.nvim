local M = {}

function M.gen_colornames(do_dark)
  local light_themes = vim.deepcopy(require("ef-themes").list.light)
  local dark_themes = vim.deepcopy(require("ef-themes").list.dark)

  local custom_themes = vim.deepcopy(require("ef-themes.themes.custom").list)

  local ret = vim.deepcopy(require("ef-themes").list[do_dark and "dark" or "light"])

  for name, val in pairs(custom_themes) do
    if val.bg == "dark" and do_dark then
      table.insert(ret, name)
    elseif val.bg == "light" and not do_dark then
      table.insert(ret, name)
    end
  end

  return ret
end

return M

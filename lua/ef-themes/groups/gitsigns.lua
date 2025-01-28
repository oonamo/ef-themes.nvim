local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.fg_added }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.fg_changed }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.fg_removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M

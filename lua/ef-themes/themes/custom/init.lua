local M = {
  list = {
    ["ef-tint"] = { bg = "dark" },
    ["ef-false"] = { bg = "dark" },
  },
}

---@param theme table
---@param opts Ef-Themes.Config
function M._hijack(theme, opts)
  local original_on_colors, original_on_highlights = opts.on_colors, opts.on_highlights
  local new_on_colors, new_on_highlights = theme.gen_on_colors(theme), theme.gen_on_highlights(theme)

  opts.on_colors = function(...)
    new_on_colors(...)
    if original_on_colors then original_on_colors(...) end
  end

  opts.on_highlights = function(...)
    local ret = new_on_highlights(...)
    if original_on_highlights then
      ret = vim.tbl_deep_extend("force", ret or {}, original_on_highlights(...) or {})
    end

    return ret
  end
end

---@param name string
function M.get(name, opts)
  if not M.list[name] then return false, "name %s does not exist" end

  local theme = require("ef-themes.themes.custom." .. name)

  M._hijack(theme, opts)

  return true, theme.palette
end

return M

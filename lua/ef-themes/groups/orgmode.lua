local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    ["@org.headline.level1"] = { fg = c.rainbow_1, bold = true },
    ["@org.headline.level2"] = { fg = c.rainbow_2, bold = true },
    ["@org.headline.level3"] = { fg = c.rainbow_3, bold = true },
    ["@org.headline.level4"] = { fg = c.rainbow_4, bold = true },
    ["@org.headline.level5"] = { fg = c.rainbow_5, bold = true },
    ["@org.headline.level6"] = { fg = c.rainbow_6, bold = true },
  }
end

return M

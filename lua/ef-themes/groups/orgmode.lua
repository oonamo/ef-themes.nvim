local M = {}

---@param c Ef-Theme
---@param opts Ef-Themes.Config
function M.get(c, opts)
  return {
    ["@org.headline.level1"] = { fg = c.rainbow_1, bold = true },
    ["@org.headline.level2"] = { fg = c.rainbow_2, bold = true },
    ["@org.headline.level3"] = { fg = c.rainbow_3, bold = true },
    ["@org.headline.level4"] = { fg = c.rainbow_4, bold = true },
    ["@org.headline.level5"] = { fg = c.rainbow_5, bold = true },
    ["@org.headline.level6"] = { fg = c.rainbow_6, bold = true },

    ["@org.keyword.todo"] = { fg = c.prose_todo },
    ["@org.keyword.done"] = { fg = c.prose_done },

    ["@org.checkbox"] = { fg = c.warning },

    ["@org.code"] = { fg = c.prose_code },

    ["@org.drawer"] = { fg = c.prose_metadata },

    ["@org.tag"] = { fg = c.prose_tag },

    ["@org.directive"] = { fg = c.prose_metadata_value },

    ["@org.footnote"] = { fg = c.link, underline = true },

    ["@org.table.heading"] = { fg = c.prose_table, bold = true },

    ["@org.agenda.scheduled"] = { fg = c.date_scheduled_subtle },
    ["@org.agenda.deadline"] = { fg = c.date_deadline_subtle },
    ["@org.agenda.scheduled_past"] = { fg = c.date_scheduled },
    ["@org.agenda.day"] = { fg = c.date_weekday, bold = true },
    ["@org.agenda.today"] = { fg = c.date_scheduled, bold = true, underline = true },
    ["@org.agenda.weekend"] = { fg = c.date_weekend, bold = true },
  }
end

return M

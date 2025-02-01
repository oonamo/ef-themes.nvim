local helpers = require("ef-themes.tests.helpers")

local new_set = MiniTest.new_set
local expect = MiniTest.expect
local eq = expect.equality
local note = MiniTest.add_note

local child = helpers.new_child_neovim()

local validate_hl_group = function(group_name, target)
  helpers.match(
    child.cmd_capture("highlight " .. group_name):gsub(" +", " "),
    group_name .. " xxx .*" .. vim.pesc(target)
  )
end

local T = new_set({
  hooks = {
    pre_case = function()
      child.init()
      child.setup()
    end,
    post_once = child.stop,
    post_case = function() child.unload() end,
  },
})

T["setup()"] = new_set()

T["setup()"]["did init"] = function()
  eq(child.g.colors_name, vim.NIL)
  eq(child.o.background, "dark")
end

T["custom"] = new_set()

T["custom"]["can call custom colorscheme"] = function()
  local custom_colorscheme = "ef-false"
  child.cmd("colorscheme " .. custom_colorscheme)
  eq(child.g.colors_name, custom_colorscheme)
end

T["custom"]["respects `on_colors`"] = function()
  child.lua([[
  require("ef-themes").setup({
    on_colors = function(colors, name)
      vim.g.__called_on_colors = true
      colors.bg_main = "#000000"
      colors.fg_main = "#ffffff"
    end
  })
  ]])

  local custom_colorscheme = "ef-tint"
  child.cmd("colorscheme " .. custom_colorscheme)
  eq(child.g.__called_on_colors, true)
  eq(child.g.colors_name, custom_colorscheme)

  validate_hl_group("Normal", "guifg=#ffffff guibg=#000000")
end

T["custom"]["respects `on_highlights`"] = function()
  child.lua([[
  require("ef-themes").setup({
    on_highlights = function(highlights, colors, name)
      vim.g.__called_on_highlights = true
      return {
        MyCoolGroup = { fg = "#ababab", bg = "#000000" }
      }
    end
  })
  ]])

  local custom_colorscheme = "ef-false"
  child.cmd("colorscheme " .. custom_colorscheme)
  eq(child.g.__called_on_highlights, true)
  eq(child.g.colors_name, custom_colorscheme)

  validate_hl_group("MyCoolGroup", "guifg=#ababab guibg=#000000")
end

return T

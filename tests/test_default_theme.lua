local helpers = require("ef-themes.tests.helpers")

local new_set = MiniTest.new_set
local expect = MiniTest.expect
local eq = expect.equality
local note = MiniTest.add_note

local child = helpers.new_child_neovim()

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

T["ef-theme"] = new_set()

T["ef-theme"]["did init"] = function()
  eq(child.lua_get("type(_G.EfThemes)"), "table")
end

T["ef-theme"]["uses default dark theme on dark"] = function()
  child.o.background = "dark"
  local default_dark_theme = child.lua_get("_G.EfThemes.config.options.dark")
  eq(type(default_dark_theme), "string")

  child.cmd("colorscheme ef-theme")
  note(default_dark_theme)

  eq(child.g.colors_name, default_dark_theme)
end

T["ef-theme"]["uses default light theme on light"] = function()
  child.o.background = "light"
  local default_dark_theme = child.lua_get("_G.EfThemes.config.options.light")
  eq(type(default_dark_theme), "string")

  child.cmd("colorscheme ef-theme")
  note(default_dark_theme)

  eq(child.g.colors_name, default_dark_theme)
end

T["ef-theme"]["overrides default dark theme on new dark theme"] = function()
  child.o.background = "dark"
  local previous_dark_theme = child.lua_get("_G.EfThemes.config.options.dark")

  local new_dark_ef_theme = "ef-owl"
  child.cmd("colorscheme " .. new_dark_ef_theme)

  eq(child.lua_get("_G.EfThemes.config.options.dark"), new_dark_ef_theme)
end

return T

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

local function get_light_theme() return child.lua_get("_G.EfThemes.config.options.light") end

local function get_dark_theme() return child.lua_get("_G.EfThemes.config.options.dark") end

T["ef-theme"] = new_set()

T["ef-theme"]["did init"] = function() eq(child.lua_get("type(_G.EfThemes)"), "table") end

T["ef-theme"]["uses default dark theme on dark"] = function()
  child.o.background = "dark"
  local default_dark_theme = get_dark_theme()
  eq(type(default_dark_theme), "string")

  child.cmd("colorscheme ef-theme")
  note(default_dark_theme)

  eq(child.g.colors_name, default_dark_theme)
end

T["ef-theme"]["uses default light theme on light"] = function()
  child.o.background = "light"
  local default_dark_theme = get_light_theme()
  eq(type(default_dark_theme), "string")

  child.cmd("colorscheme ef-theme")
  note(default_dark_theme)

  eq(child.g.colors_name, default_dark_theme)
end

T["ef-theme"]["overrides default dark theme on new dark theme"] = function()
  child.o.background = "dark"

  local new_dark_ef_theme = "ef-owl"
  child.cmd("colorscheme " .. new_dark_ef_theme)

  eq(child.lua_get("_G.EfThemes.config.options.dark"), new_dark_ef_theme)
end

T["ef-theme"]["overrides default dark theme on new light theme"] = function()
  child.o.background = "light"

  local new_light_ef_theme = "ef-day"
  child.cmd("colorscheme " .. new_light_ef_theme)

  eq(child.lua_get("_G.EfThemes.config.options.light"), new_light_ef_theme)
end

T["ef-theme"]["toggles default themes on background change"] = function()
  local current_light_theme = get_light_theme()
  local current_dark_theme = get_dark_theme()

  eq(child.g.colors_name, vim.NIL)

  note(string.format("light: %s, dark: %s", current_light_theme, current_dark_theme))

  child.o.background = "dark"
  child.cmd("colorscheme ef-theme")

  eq(child.g.colors_name, current_dark_theme)

  child.o.background = "light"
  eq(child.g.colors_name, current_light_theme)

  child.o.background = "dark"
  eq(child.g.colors_name, current_dark_theme)
end

T["ef-theme"]["toggles updated defaults on backround change"] = function()
  local default_dark = get_dark_theme()
  eq(child.g.colors_name, vim.NIL)

  child.o.background = "dark"
  child.cmd("colorscheme ef-theme")
  eq(child.g.colors_name, default_dark)

  local new_dark, new_light = "ef-bio", "ef-arbutus"

  child.cmd("colorscheme " .. new_light)
  eq(child.g.colors_name, new_light)
  eq(child.o.background, "light")

  child.cmd("colorscheme " .. new_dark)
  eq(child.g.colors_name, new_dark)
  eq(child.o.background, "dark")

  child.o.background = "light"
  eq(child.g.colors_name, new_light)

  child.o.background = "dark"
  eq(child.g.colors_name, new_dark)
end

return T

local helpers = require("ef-themes.tests.helpers")

local new_set = MiniTest.new_set
local expect = MiniTest.expect
local eq = expect.equality
local note = MiniTest.add_note

local child = helpers.new_child_neovim()

local expect_config = function(field, value) eq(child.lua_get("EfThemes.config." .. field), value) end
local eq_default = function(field)
  eq(child.lua_get("EfThemes.config.defaults." .. field), child.lua_get("EfThemes.config.options." .. field))
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
T["setup()"]["sets global variables"] = function()
  eq(child.lua_get([[type(_G.EfThemes)]]), "table")
  eq(child.lua_get([[type(_G.EfThemes.config)]]), "table")
end

T["setup()"]["sets default config"] = function()
  expect_config("options.light", "ef-spring")
  expect_config("defaults.light", "ef-spring")
  eq_default("light")

  expect_config("options.dark", "ef-winter")
  expect_config("defaults.dark", "ef-winter")
  eq_default("dark")

  expect_config("options.styles.comments", { italic = true })
  expect_config("options.styles.keywords", { bold = true })
  expect_config("options.styles.functions", {})
  expect_config("options.styles.variables", {})

  expect_config("options.modules", {
    blink = true,
    fzf = false,
    mini = true,
    semantic_tokens = false,
    snacks = false,
    treesitter = true,
  })
end

T["setup()"]["respects opts"] = function()
  child.unload()

  eq(child.lua_get("type(_G.EfThemes)"), "nil")

  child.poke_eventloop()

  child.setup({
    light = "ef-elea-light",
    dark = "ef-bio",
    styles = {
      variables = { bold = true },
      functions = { bold = true },
    },
    modules = {
      neogit = true,
      blink = false,
      cmp = true,
    },
  })

  eq(child.lua_get("type(_G.EfThemes)"), "table")
  expect_config("options.light", "ef-elea-light")

  expect_config("options.styles.variables", { bold = true })
  expect_config("options.styles.functions", { bold = true })
  expect_config("options.modules", {
    blink = false,
    cmp = true,
    fzf = false,
    mini = true,
    neogit = true,
    semantic_tokens = false,
    snacks = false,
    treesitter = true,
  })
end

return T

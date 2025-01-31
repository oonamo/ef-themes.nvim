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

T["on_colors()"] = new_set({
  hooks = {
    pre_case = function() child.unload() end,
  },
})

T["on_colors()"]["respects `on_colors`"] = function()
  child.lua([[
  require("ef-themes").setup({
    on_colors = function(colors, name)
      vim.g._called_on_colors = true

      colors.bg_main = "#000000"
      colors.fg_main = "#ffffff"
    end
  })
  ]])

  child.cmd("colorscheme ef-theme")

  eq(child.g._called_on_colors, true)

  validate_hl_group("Normal", "guifg=#ffffff guibg=#000000")
end

T["on_colors()"]["resolves references"] = function()
  child.lua([[
  require("ef-themes").setup({
    on_colors = function(colors, name)
      colors.fg_main = "yellow_faint"
      colors.bg_main = "bg_alt"
    end
  })
  ]])

  local theme = "ef-owl"
  child.cmd("colorscheme " .. theme)
  eq(child.g.colors_name, theme)

  local fmt = string.format

  local palette = child.lua_get(fmt("EfThemes.get_palette('%s')", theme)) --[[@as Ef-Theme]]
  local fg_should_be = palette.yellow_faint
  local bg_should_be = palette.bg_alt
  validate_hl_group("Normal", fmt("guifg=%s guibg=%s", fg_should_be, bg_should_be))
end

T["on_highlights()"] = new_set()

T["on_highlights()"]["respects `on_highlights`"] = function()
  child.lua([[
  require("ef-themes").setup({
    on_highlights = function(highlights, colors, name)
      vim.g._called_on_highlights = true
      vim.g.__all_groups = highlights
      return {
        MyGroup = { fg = "#ffffff", bg = "#000000" }
      }
    end
  })
  ]])

  child.cmd("colorscheme ef-theme")
  eq(child.g._called_on_highlights, true)

  validate_hl_group("MyGroup", "guifg=#ffffff guibg=#000000")
end

return T

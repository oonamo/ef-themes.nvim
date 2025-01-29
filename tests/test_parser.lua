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
    pre_once = function()
    end,
  },
})

T["compile"] = new_set()

T["compile"]["hash function works"] = function()
  local hash = require("ef-themes.lib.compiler").hash
  assert(hash("abcdefgh") ~= hash("1234567"))
end

return T

local M = {}
local MiniTest = require("mini.test")

M.make_partial_tbl = function(tbl, ref)
  local res = {}
  for k, v in pairs(ref) do
    res[k] = (type(tbl[k]) == "table" and type(v) == "table") and M.make_partial_tbl(tbl[k], v) or tbl[k]
  end
  for i = 1, #tbl do
    if ref[i] == nil then res[i] = tbl[i] end
  end
  return res
end

M.new_child_neovim = function()
  local child = MiniTest.new_child_neovim()

  local prevent_hanging = function(method)
    if not child.is_blocked() then return end

    local msg = string.format("Can not use `child.%s` because child process is blocked.", method)
    error(msg)
  end

  child.init = function()
    child.restart({ "-u", "tests/mininit.lua" })
    child.cmd("hi! clear")

    -- Change initial buffer to be readonly. This not only increases execution
    -- speed, but more closely resembles manually opened Neovim.
    child.bo.readonly = false
  end

  ---@param config? Ef-Themes.Config
  child.setup = function(config) child.lua([[require("ef-themes").setup(...)]], { config or {} }) end
  child.unload = function()
    child.lua("_G.EfThemes = nil")
    child.lua([[package.loaded["ef-themes"] = nil]])

    for pack, _ in pairs(package.loaded) do
      if pack:match("^ef-themes") then pack = nil end
    end
  end

  child.poke_eventloop = function() child.api.nvim_eval("1") end

  return child
end

return M

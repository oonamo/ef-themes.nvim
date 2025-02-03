-- Cleaning cache
require("ef-themes").clean()

local function reset()
  for k in pairs(package.loaded) do
    if k:match("^ef%-themes") then package.loaded[k] = nil end
  end
  EfThemes = nil
  vim.cmd.hi("clear")
end

-- Reset state from requiring
reset()
assert(package.loaded["ef-themes"] == nil)

-- https://github.com/echasnovski/mini.nvim/blob/509e086e13a1aa7105e427bb1b122a7174716b77/lua/mini/misc.lua#L89-L99
local function bench(f, n, after_each, ...)
  n = n or 1
  local durations, output = {}, nil
  for _ = 1, n do
    local start_time = vim.loop.hrtime()
    output = f(...)
    local end_time = vim.loop.hrtime()
    table.insert(durations, 0.000000001 * (end_time - start_time))
    if vim.is_callable(after_each) then after_each() end
  end

  return durations, output
end

local compiled_run = bench(function() vim.cmd.colorscheme("ef-dream") end, 20, function()
  require("ef-themes").clean()
  reset()
end)

local other_times = bench(function() vim.cmd.colorscheme("ef-dream") end, 100, reset)

local function write(text)
  io.stdout:write(text)
  io.flush()
end

local ansi = {
  red = "\27[1;31m", -- Bold red
  green = "\27[1;32m", -- Bold green
  emphasis = "\27[1m", -- Bold
  reset = "\27[0m",
}

-- stylua: ignore
local function format(not_compiled, compiled)
  write(string.format([[
-------------| %s   Maximum   Mean      Minimum%s
%sNot Compiled %s|    %f  %f  %f
%sCompiled     %s|    %f  %f  %f
  ]],
  ansi.green, ansi.reset,
  ansi.emphasis, ansi.reset, not_compiled.maximum, not_compiled.mean, not_compiled.minimum,
  ansi.emphasis, ansi.reset, compiled.maximum, compiled.mean, compiled.minimum
  ))
end

-- https://github.com/echasnovski/mini.nvim/blob/509e086e13a1aa7105e427bb1b122a7174716b77/lua/mini/misc.lua#L444-L472
local function stat_summary(t)
  local n = #t
  local delta, m1, m2 = 0, 0, 0
  local minimum, maximum = math.huge, -math.huge
  for i, x in ipairs(t) do
    delta = x - m1
    m1 = m1 + delta / i
    m2 = m2 + delta * (x - m1)

    -- Extremums
    minimum = x < minimum and x or minimum
    maximum = x > maximum and x or maximum
  end

  return {
    maximum = maximum,
    mean = m1,
    minimum = minimum,
    n = n,
    sd = math.sqrt(n > 1 and m2 / (n - 1) or 0),
  }
end

format(stat_summary(compiled_run), stat_summary(other_times))

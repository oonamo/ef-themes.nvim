if not EfThemes then error("Requires to source ./tests/mininit.lua") end
if not MiniMisc then require("mini.misc").setup() end

-- Cleaning
EfThemes.clean()

local complied_run = MiniMisc.bench_time(function()
  vim.cmd.colorscheme("ef-dream")
end)

local other_times = MiniMisc.bench_time(function()
  vim.cmd.hi("clear")
  vim.cmd.colorscheme("ef-dream")
end, 100)

vim.print(complied_run, MiniMisc.stat_summary(other_times))

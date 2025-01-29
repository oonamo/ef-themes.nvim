local cwd = vim.uv.cwd()

local sep = package.config:sub(1, 1)

local mini_tests = vim.fs.joinpath(cwd, "deps", "mini.nvim")
mini_tests = mini_tests:gsub(sep == "/" and "\\" or "/", sep)

vim.opt.rtp:append(cwd)
vim.opt.rtp:append(mini_tests)

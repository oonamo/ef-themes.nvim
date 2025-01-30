local cwd = vim.uv.cwd()

local sep = package.config:sub(1, 1)

local mini = vim.fs.joinpath(cwd, "deps", "mini.nvim")
mini = mini:gsub(sep == "/" and "\\" or "/", sep)

vim.opt.rtp:append(cwd)
vim.opt.rtp:append(mini)

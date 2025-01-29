local bufname = vim.api.nvim_buf_get_name(0)
local ef_theme_plugin = vim.fn.fnamemodify(bufname, ":h:h")

local sep = package.config:sub(1, 1)

local mini_tests = vim.fs.joinpath(vim.fn.fnamemodify(bufname, ":h:h"), "deps", "mini")

mini_tests = mini_tests:gsub(sep == "/" and "\\" or "/", sep)

-- local mini_tests = vim.fn.fnamemodify(bufname, ":h:h") .. package.config:sub(1,1) .. "deps"

vim.opt.rtp:append(ef_theme_plugin)
vim.opt.rtp:append(mini_tests)

local bufname = vim.api.nvim_buf_get_name(0)
local ef_theme_plugin = vim.fn.fnamemodify(bufname, ":h:h")

vim.opt.rtp:append(ef_theme_plugin)
require("ef-themes").setup()

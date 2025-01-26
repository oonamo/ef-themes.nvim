local M = {}

---@param file string File to write to
---@param contents string Content to write to file
M.write = function(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

return M

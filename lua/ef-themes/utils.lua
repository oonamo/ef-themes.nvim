local M = {}

---@param file string File to write to
---@param contents string Content to write to file
M.write = function(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

---@param file string File to write to
---@param contents string Content to write to file
M.write_byte = function(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "wb"))
  fd:write(contents)
  fd:close()
end

M.read = function(filepath)
  local file = io.open(filepath, "r")
  if file then
    local content = file:read()
    file:close()
    return content
  end
end

M.for_file_in_dir_write = function(dir, str)
  local ok, err_or_value = pcall(vim.fn.readdir, dir)
  if ok then
    for _, v in ipairs(err_or_value or {}) do
      local path = vim.fs.joinpath(dir, v)
      DD("cleangin", path)
      M.write(path, str)
    end
  end
end

return M

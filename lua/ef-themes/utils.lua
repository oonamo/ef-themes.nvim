local Utils = {}

---@param file string File to write to
---@param contents string Content to write to file
Utils.write = function(file, contents, mode)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, mode or "w+"))
  fd:write(contents)
  fd:close()
end

---@param file string File to write to
---@param contents string Content to write to file
Utils.write_byte = function(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "wb"))
  fd:write(contents)
  fd:close()
end

Utils.read = function(filepath, mode)
  local file = io.open(filepath, "r")
  if file then
    local content
    if mode then
      content = file:read(mode)
    else
      content = file:read()
    end
    file:close()
    return content
  end
end

Utils.for_file_in_dir_write = function(dir, str)
  local ok, err_or_value = pcall(vim.fn.readdir, dir)
  if ok then
    for _, v in ipairs(err_or_value or {}) do
      local path = vim.fs.joinpath(dir, v)
      Utils.write(path, str)
    end
  end
end

return Utils

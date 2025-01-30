local kinds = {
  Array = "fg_dim",
  Boolean = "constant",
  Class = "type",
  Color = "string",
  Constant = "constant",
  Constructor = "magenta",
  Enum = "type",
  EnumMember = "type",
  Event = "constant",
  Field = "accent_2",
  File = "fg_main",
  Folder = "accent_0",
  Function = "fnname",
  Interface = "accent_1",
  Key = "accent_2",
  Keyword = "keyword",
  Method = "preprocessor",
  Module = "preprocessor",
  Namespace = "preprocessor",
  Null = "builtin",
  Number = "constant",
  Object = "constant",
  Operator = "fg_dim",
  Package = "preprocessor",
  Property = "green_cool",
  Reference = "link",
  Snippet = "fg_alt",
  String = "string",
  Struct = "type",
  Unit = "type",
  Text = "fg_main",
  TypeParameter = "type",
  Variable = "variable",
  Value = "string",
}

local M = {}

--- Adds `kind` highlights in place
---
---@param c Ef-Theme
---@param hls? table
---@param fmt? string
function M.kinds(c, hls, fmt)
  hls = hls or {}
  for kind, color in pairs(kinds) do
    local base = "LspKind" .. kind
    if fmt then
      hls[fmt:format(kind)] = base
    else
      hls[base] = { fg = c[color] }
    end
  end

  return hls
end

function M.get(c, opts) return M.kinds(c) end

return M

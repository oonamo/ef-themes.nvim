local minidoc = require("mini.doc")
if _G.MiniDoc == nil then minidoc.setup() end

local H = {}

local hooks = vim.deepcopy(MiniDoc.default_hooks)

hooks.write_pre = function(lines)
  -- Remove first two lines with `======` and `------` delimiters to comply
  -- with `:h local-additions` template
  table.remove(lines, 1)
  table.remove(lines, 1)
  return lines
end

H.visual_text_width = function(text)
  -- Ignore concealed characters (usually "invisible" in 'help' filetype)
  local _, n_concealed_chars = text:gsub("([*|`])", "%1")
  return vim.fn.strdisplaywidth(text) - n_concealed_chars
end

H.apply_recursively = function(f, x)
  f(x)

  if type(x) == "table" then
    for _, t in ipairs(x) do
      H.apply_recursively(f, t)
    end
  end
end

H.new_struct = function(struct_type, info)
  local output = {
    info = info or {},
    type = struct_type,
  }

  output.insert = function(self, index, child)
    -- Allow both `x:insert(child)` and `x:insert(1, child)`
    if child == nil then
      child, index = index, #self + 1
    end

    if type(child) == "table" then
      child.parent = self
      child.parent_index = index
    end

    table.insert(self, index, child)

    H.sync_parent_index(self)
  end

  output.remove = function(self, index)
    index = index or #self
    table.remove(self, index)

    H.sync_parent_index(self)
  end

  output.has_descendant = function(self, predicate)
    local bool_res, descendant = false, nil
    H.apply_recursively(function(x)
      if not bool_res and predicate(x) then
        bool_res = true
        descendant = x
      end
    end, self)
    return bool_res, descendant
  end

  output.has_lines = function(self)
    return self:has_descendant(function(x) return type(x) == "string" end)
  end

  output.clear_lines = function(self)
    for i, x in ipairs(self) do
      if type(x) == "string" then
        self[i] = nil
      else
        x:clear_lines()
      end
    end
  end

  return output
end

H.sync_parent_index = function(x)
  for i, _ in ipairs(x) do
    if type(x[i]) == "table" then x[i].parent_index = i end
  end
  return x
end

-- Converter (this ensures that children have proper parent-related data)
H.as_struct = function(array, struct_type, info)
  -- Make default info `info` for cases when structure is created manually
  local default_info = ({
    section = { id = "@text", line_begin = -1, line_end = -1 },
    block = { afterlines = {}, line_begin = -1, line_end = -1 },
    file = { path = "" },
    doc = { input = {}, output = "", config = MiniDoc.config },
  })[struct_type]
  info = vim.tbl_deep_extend("force", default_info, info or {})

  local res = H.new_struct(struct_type, info)
  for _, x in ipairs(array) do
    res:insert(x)
  end
  return res
end

H.tbl_flatten = vim.fn.has("nvim-0.10") == 1 and function(x) return vim.iter(x):flatten(math.huge):totable() end
  or vim.tbl_flatten

local toc_hook = function(s)
  if MiniDoc.current.toc == nil then return end

  -- Render table of contents
  local toc_lines = {}
  for num, toc_entry in ipairs(MiniDoc.current.toc) do
    local _, tag_section = toc_entry.parent:has_descendant(
      function(x) return type(x) == "table" and x.type == "section" and x.info.id == "@tag" end
    )
    tag_section = tag_section or {}

    local lines = {}
    for i = 1, math.max(#toc_entry, #tag_section) do
      local left = tostring(num) .. ". " .. (toc_entry[i] or "")
      -- Use tag reference instead of tag enclosure
      local right = vim.trim((tag_section[i] or ""):gsub("%*", "|"))
      -- Add visual line only at first entry (while not adding trailing space)
      local filler = " "
      -- Make padding of 2 spaces at both left and right
      local n_filler = math.max(74 - H.visual_text_width(left) - H.visual_text_width(right), 3)
      table.insert(lines, ("  %s%s%s"):format(left, filler:rep(n_filler), right))
    end

    table.insert(toc_lines, lines)

    -- Don't show `toc_entry` lines in output
    toc_entry:clear_lines()
  end

  for _, l in ipairs(H.tbl_flatten(toc_lines)) do
    s:insert(l)
  end
end

local original_doc_hook = hooks.doc

hooks.doc = function(d)
  H.apply_recursively(function(x)
    if not (type(x) == "table" and x.type == "section" and x.info.id == "@toc") then return end
    toc_hook(x)
  end, d)

  -- Insert modeline
  d:insert(
    H.as_struct({ H.as_struct({ H.as_struct({ " vim:tw=78:ts=8:noet:ft=help:norl:" }, "section") }, "block") }, "file")
  )
end

MiniDoc.generate({
  "lua/ef-themes/init.lua",
  "lua/ef-themes/config.lua",
  "lua/ef-themes/types.lua",
}, nil, { hooks = hooks })

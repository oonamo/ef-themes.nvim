local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    -- ["@keyword.conditional"] = { link = "Conditional" },
    -- ["@keyword.coroutine"] = { link = "@keyword" },
    -- ["@keyword.debug"] = { link = "Debug" },
    -- ["@keyword.directive"] = { link = "PreProc" },
    -- ["@keyword.directive.define"] = { link = "Define" },
    -- ["@keyword.exception"] = { link = "Exception" },
    -- ["@keyword.function"] = { fg = c.magenta, style = opts.styles.functions, }, -- For keywords used to define a function.
    -- ["@keyword.import"] = { link = "Include" },
    -- ["@keyword.operator"] = { link = "@operator" },
    -- ["@keyword.repeat"] = { link = "Repeat" },
    -- ["@keyword.return"] = { link = "@keyword" },
    -- ["@property"] = { fg = c.green1 },
    -- ["@punctuation.delimiter"] = { fg = c.blue_cooler }, -- For delimiters ie: `.`
    -- ["@tag.delimiter.tsx"] = { fg = Util.blend_bg(c.blue, 0.7) },
    -- ["@type"] = { link = "Type" },
    -- ["@variable"] = { fg = c.variable },
    -- ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

     ["@annotation"]                   = { fg = c.variable },
     ["@attribute"]                    = { link = "PreProc" },
     ["@boolean"]                      = { link = "Boolean" },
     ["@character"]                    = { link = "Character" },
     ["@character.printf"]             = { link = "SpecialChar" },
     ["@character.special"]            = { link = "SpecialChar" },
     ["@comment"]                      = { link = "Comment" },
     ["@comment.error"]                = { fg = c.err },
     ["@comment.hint"]                 = { fg = c.info },
     ["@comment.info"]                 = { fg = c.info },
     ["@comment.note"]                 = { fg = c.info },
     ["@comment.todo"]                 = { fg = c.prose_todo },
     ["@comment.warning"]              = { fg = c.warning },
     ["@constant"]                     = { link = "Constant" },
     ["@constant.builtin"]             = { link = "Special" },
     ["@constant.macro"]               = { link = "Define" },
     ["@constructor"]                  = { fg = c.magenta }, -- For constructor calls and definitions: `= { }
     ["@constructor.tsx"]              = { fg = c.blue1 },
     ["@diff.delta"]                   = { link = "DiffChange" },
     ["@diff.minus"]                   = { link = "DiffDelete" },
     ["@diff.plus"]                    = { link = "DiffAdd" },
     ["@function"]                     = { link = "Function" },
     ["@function.builtin"]             = { link = "Special" },
     ["@function.call"]                = { link = "@function" },
     ["@function.macro"]               = { link = "Macro" },
     ["@function.method"]              = { link = "Function" },
     ["@function.method.call"]         = { link = "@function.method" },
     ["@keyword"]                      = { fg = c.purple, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
     ["@keyword.storage"]              = { link = "StorageClass" },
     ["@label"]                        = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
     ["@markup"]                       = { link = "@none" },
     ["@markup.emphasis"]              = { italic = true },
     ["@markup.environment"]           = { link = "Macro" },
     ["@markup.environment.name"]      = { link = "Type" },
     ["@markup.heading"]               = { link = "Title" },
     ["@markup.heading.1.markdown"]    = { link = "markdownH1" },
     ["@markup.heading.2.markdown"]    = { link = "markdownH2" },
     ["@markup.heading.3.markdown"]    = { link = "markdownH3" },
     ["@markup.heading.4.markdown"]    = { link = "markdownH4" },
     ["@markup.heading.5.markdown"]    = { link = "markdownH5" },
     ["@markup.heading.6.markdown"]    = { link = "markdownH6" },
     ["@markup.italic"]                = { italic = true },
     ["@markup.link"]                  = { fg = c.link, underline = true },
     ["@markup.link.label"]            = { fg = c.link, underline = true },
     ["@markup.link.label.symbol"]     = { link = "Identifier" },
     ["@markup.link.url"]              = { fg = c.link, underline = true },
     ["@markup.list"]                  = { fg = c.blue_faint }, -- For special punctutation that does not fall in the categories before.
     ["@markup.list.checked"]          = { fg = c.green_cooler }, -- For brackets and parens.
     ["@markup.list.markdown"]         = { fg = c.orange, bold = true },
     ["@markup.list.unchecked"]        = { fg = c.blue }, -- For brackets and parens.
     ["@markup.math"]                  = { link = "Special" },
     ["@markup.raw"]                   = { link = "String" },
     ["@markup.raw.markdown_inline"]   = { bg = c.bg_term_black, fg = c.blue },
     ["@markup.strikethrough"]         = { strikethrough = true },
     ["@markup.strong"]                = { bold = true },
     ["@markup.underline"]             = { underline = true },
     ["@module"]                       = { link = "Include" },
     ["@module.builtin"]               = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
     ["@namespace.builtin"]            = { link = "@variable.builtin" },
     ["@none"]                         = {},
     ["@number"]                       = { link = "Number" },
     ["@number.float"]                 = { link = "Float" },
     ["@operator"]                     = { fg = c.fg_main, bold = true }, -- For any operator: `+`, but also `->` and `*` in C.
     ["@punctuation.bracket"]          = { fg = c.fg_dim }, -- For brackets and parens.
     ["@punctuation.special"]          = { fg = c.accent_2 }, -- For special symbols (e.g. `{}` in string interpolation)
     ["@punctuation.special.markdown"] = { fg = c.accent_3 }, -- For special symbols (e.g. `{}` in string interpolation)
     ["@string"]                       = { link = "String" },
     ["@string.documentation"]         = { fg = c.yellow },
     ["@string.escape"]                = { fg = c.rx_escape }, -- For escape characters within a string.
     ["@string.regexp"]                = { fg = c.blue_cooler }, -- For regexes.
     ["@tag"]                          = { link = "Label" },
     ["@tag.attribute"]                = { link = "@property" },
     ["@tag.delimiter"]                = { link = "Delimiter" },
     ["@tag.javascript"]               = { fg = c.red },
     ["@tag.tsx"]                      = { fg = c.red },
     ["@type.builtin"]                 = { fg = c.builtin, bold = true },
     ["@type.definition"]              = { link = "Typedef" },
     ["@type.qualifier"]               = { link = "@keyword" },
     ["@variable"]                     = { link = "Variable" },
     ["@variable.builtin"]             = { fg = c.builtin, bold = true }, -- Variable names that are defined by the languages, like `this` or `self`.
     ["@variable.member"]              = { fg = c.accent_2 }, -- For fields.
     ["@variable.parameter"]           = { fg = c.yellow }, -- For parameters of a function.
  }
end

return M

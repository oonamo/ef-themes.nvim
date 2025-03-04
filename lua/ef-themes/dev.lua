--- Dev file
local Dev = {}

local M = {
  cache = {},
  globals = {},
}

local has_hipatterns, hi = pcall(require, "mini.hipatterns")

local function reload()
  for k in pairs(package.loaded) do
    if k:match("^ef%-themes") then package.loaded[k] = nil end
  end
  M.cache = {}

  local colorscheme = EfThemes.config.options[vim.o.bg]
  vim.cmd.colorscheme(colorscheme)

  M.globals.palette = EfThemes.get_palette(colorscheme)

  Dev.reset_hipatterns()
end

reload = vim.schedule_wrap(reload)

function Dev.reset() reload() end

function Dev.reset_hipatterns()
  if has_hipatterns then
    for _, buf in ipairs(require("mini.hipatterns").get_enabled_buffers()) do
      hi.update(buf)
    end
  end
end

function Dev.setup()
  M.globals.opts = require("ef-themes.config").extend()
  Dev.reset()
  Dev.hipatterns()
end

function Dev.setup_hipatterns()
  vim.schedule(function()
    M.cache = {}
    local colorscheme = require("ef-themes.config").options[vim.o.bg]
    vim.cmd.colorscheme(colorscheme)

    M.globals.palette = require("ef-themes").get_palette(colorscheme)

    Dev.reset_hipatterns()
  end)

  Dev.hipatterns()
end

local augroup = vim.api.nvim_create_augroup("ef-theme.dev", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*/lua/ef-themes/**.lua",
  group = augroup,
  callback = reload,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  group = augroup,
  callback = function()
    M.cache = {}
    local colorscheme = EfThemes.config.options[vim.o.bg]
    M.globals.palette = EfThemes.get_palette(colorscheme)
  end,
})

---@param name string
---@param buf number
function M.hl_group(name, buf) return vim.api.nvim_buf_get_name(buf):find("kinds") and "LspKind" .. name or name end

function Dev.hipatterns()
  if not has_hipatterns then return end
  local opts = hi.config
  opts.highlighters = opts.highlighters or {}

  local patterns = {
    "%f[%w]()c%.[%w_%.%d]+()%f[%W]",
    "%f[%w]()colors%.[%w_%.%d]+()%f[%W]",
    "%${[%w_]+}", -- matches ${bg_main}
    "%f[%w]()var%(%-%-[%w-%d]+%)()",
  }
  local match_patterns = {
    "c%.(.*)",
    "%${([%w_]+)}",
    function(match)
      local name = string.match(match, "var%(%-%-([%w-]+)%)")
      if name then return name:gsub("-", "_") end
    end,
    "colors%.(.*)",
  }

  opts.highlighters = vim.tbl_deep_extend("keep", opts.highlighters, {
    hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),

    hl_group = {
      pattern = function(buf)
        return vim.api.nvim_buf_get_name(buf):find("lua[\\/]ef%-themes") and '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
      end,
      group = function(buf, match)
        local group = M.hl_group(match, buf)
        if group then
          if M.cache[group] == nil then
            M.cache[group] = false
            local hl = vim.api.nvim_get_hl(0, { name = group, link = false, create = false })
            if not vim.tbl_isempty(hl) then
              hl.fg = hl.fg or vim.api.nvim_get_hl(0, { name = "Normal", link = false }).fg
              M.cache[group] = true
              vim.api.nvim_set_hl(0, group .. "Dev", hl)
            end
          end
          return M.cache[group] and group .. "Dev" or nil
        end
      end,
      extmark_opts = { priority = 2000 },
    },

    hl_color = {
      pattern = {
        "%f[%w]()c%.[%w_%.%d]+()%f[%W]",
        "%f[%w]()colors%.[%w_%.%d]+()%f[%W]",
        "%${[%w_]+}", -- matches ${bg_main}
        "%f[%w]()var%(%-%-[%w-%d]+%)()",
      },
      group = function(_, match)
        local colors_name
        for _, v in ipairs(match_patterns) do
          if vim.is_callable(v) then
            colors_name = v(match)
          else
            colors_name = string.match(match, v)
          end

          if colors_name then break end
        end
        local color = M.globals.palette[colors_name]
        return type(color) == "string" and require("mini.hipatterns").compute_hex_color_group(color, "fg")
      end,
      extmark_opts = function(_, _, data)
        return {
          virt_text = { { "⬤ ", data.hl_group } },
          virt_text_pos = "inline",
          priority = 2000,
        }
      end,
    },
  })

  hi.setup(opts)
end

return Dev

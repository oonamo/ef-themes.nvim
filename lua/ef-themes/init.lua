local M = {
  list = {
    dark = {
      "ef-autumn",
      "ef-bio",
      "ef-cherie",
      "ef-dark",
      "ef-deuteranopia-dark",
      "ef-dream",
      "ef-duo-dark",
      "ef-elea-dark",
      "ef-maris-dark",
      "ef-melissa-dark",
      "ef-night",
      "ef-owl",
      "ef-rosa",
      "ef-symbiosis",
      "ef-trio-dark",
      "ef-tritanopia-dark",
      "ef-winter",
    },
    light = {
      "ef-arbutus",
      "ef-cyprus",
      "ef-day",
      "ef-deuteranopia-light",
      "ef-duo-light",
      "ef-eagle",
      "ef-elea-light",
      "ef-frost",
      "ef-kassio",
      "ef-light",
      "ef-maris-light",
      "ef-melissa-light",
      "ef-reverie",
      "ef-spring",
      "ef-summer",
      "ef-trio-light",
      "ef-tritanopia-light",
    },
  },
}

---@alias Ef-Themes.ThemeOpts { bg: string, name: string }
function M.setup(opts)
  _G.EfThemes = _G.EfThemes or M

  require("ef-themes.config").setup(opts)
  M.__did_setup = true

  opts = require("ef-themes.config").extend()

  if opts.options.compile then
    local sep = package.config:sub(1, 1)
    local cache_path = string.format("%s%s%s", opts.options.compile_path, sep, "cache")
    local previous_hash = require("ef-themes.utils").read(cache_path)

    local git_path = debug.getinfo(1).source:sub(2, string.len("/lua/ef-themes/init.lua") * -1) .. ".git"
    local git_time = vim.fn.getftime(git_path)
    local hash = require("ef-themes.lib.compiler").hash(opts) .. (git_time == -1 and git_path or git_time)

    if previous_hash ~= hash then
      -- HACK: Don't delete the cached files, but rather make them invalid
      require("ef-themes.utils").for_file_in_dir_write(opts.options.compile_path, "()")
      require("ef-themes.utils").write_byte(cache_path, hash)
    end
  end
end

function M.clean()
  local opts = require("ef-themes.config").extend()

  -- HACK: Don't delete the cached files, but rather make them invalid
  require("ef-themes.utils").for_file_in_dir_write(opts.options.compile_path, "()")
end

function M.is_dark(color) return vim.tbl_contains(M.list.dark, color) end

local lock = false

---@param theme_opts Ef-Themes.ThemeOpts
function M.load(theme_opts, opts)
  if lock then return end

  if not M.__did_setup then M.setup(opts) end
  opts = require("ef-themes.config").extend(opts)

  local name, bg = theme_opts.name, theme_opts.bg
  if name == "ef-theme" then
    name = opts[vim.o.bg]
    theme_opts.name = opts[vim.o.bg]
  end

  if vim.o.bg ~= bg or (name == "ef-theme") then
    if vim.g.colors_name == name then
      name = opts[vim.o.bg]
      bg = vim.o.bg
      theme_opts.name = opts[vim.o.bg]
      theme_opts.bg = vim.o.bg
    else
      vim.o.background = bg
    end
  end

  local loaded = false
  lock = true

  if opts.options.compile then
    local compiled_file = vim.fs.joinpath(opts.options.compile_path, name .. ".lua")
    local f, _ = loadfile(compiled_file)
    if f then
      f()
      loaded = true
    end
  end

  if not loaded then
    local palette = require("ef-themes.themes").get_palette(name, opts)
    require("ef-themes.groups").build(palette, opts, name, theme_opts)
  end

  require("ef-themes.config").extend({
    [vim.o.bg] = name,
  })

  lock = false
end

function M.select_light()
  vim.ui.select(M.list.light, { prompt = "Select light Ef theme: " }, function(choice)
    if not choice then return end
    vim.o.bg = "light"

    M.load({ name = choice, bg = "light" })

    vim.g.colors_name = choice

    vim.notify(choice, vim.log.levels.INFO)
    vim.schedule(function() vim.api.nvim_exec_autocmds("ColorScheme", { pattern = choice }) end)
  end)
end

function M.select_dark()
  vim.ui.select(M.list.dark, { prompt = "Select dark Ef theme: " }, function(choice)
    if not choice then return end
    vim.o.bg = "dark"

    M.load({ name = choice, bg = "dark" })

    vim.g.colors_name = choice

    vim.notify(choice, vim.log.levels.INFO)
    vim.schedule(function() vim.api.nvim_exec_autocmds("ColorScheme", { pattern = choice }) end)
  end)
end

function M.load_random()
  local is_dark = math.random() > 0.5
  local theme_list
  if is_dark then
    theme_list = M.list.dark
    vim.o.bg = "dark"
  else
    theme_list = M.list.light
    vim.o.bg = "light"
  end

  local idx = math.random(1, #theme_list)
  M.load({ name = theme_list[idx], bg = is_dark and "dark" or "light" })
  vim.g.colors_name = theme_list[idx]

  vim.notify("Ef-themes: " .. theme_list[idx], vim.log.levels.INFO)
  vim.schedule(function() vim.api.nvim_exec_autocmds("ColorScheme", { pattern = theme_list[idx] }) end)
end

return M

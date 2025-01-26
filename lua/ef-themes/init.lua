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

function M.setup(opts)
  require("ef-themes.config").setup(opts)
  M.__did_setup = true
end

function M.load(theme_opts, opts)
  local name, bg = theme_opts.name, theme_opts.bg

  if not M.__did_setup then M.setup(opts) end
  opts = require("ef-themes.config").extend(opts)

  if vim.o.bg ~= bg or (name == "ef-theme") then name = opts[vim.o.bg] end

  local palette = require("ef-themes.themes").get_palette(name)
  require("ef-themes.groups").build(palette, opts)

  require("ef-themes.config").extend({
    [vim.o.bg] = name,
  })
end

function M.select_light()
  vim.ui.select(M.list.light, { prompt = "Select light Ef theme: " }, function(choice)
    if not choice then return end
    M.load({ name = choice, bg = "light" })
  end)
end

function M.select_dark()
  vim.ui.select(M.list.dark, { prompt = "Select dark Ef theme: " }, function(choice)
    if not choice then return end
    M.load({ name = choice, bg = "dark" })
  end)
end

function M.load_random()
  local is_dark = math.random() > 0.5
  local theme_list
  if is_dark then
    theme_list = M.list.dark
  else
    theme_list = M.list.light
  end

  local idx = math.random(1, #theme_list)
  M.load({ name = theme_list[idx], bg = is_dark and "dark" or "light" })
end

return M

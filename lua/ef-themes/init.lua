--- *ef-themes.nvim* Colourful and legible themes for Neovim
--- *ef-themes.txt*
---
--- Originally by `protesilaos`
--- * - `Github`: https://github.com/protesilaos/ef-themes
--- * - `Website`: https://protesilaos.com/
---
--- GNU License

--- CONTENTS
---
---@toc
---@tag ef-themes-contents

--- FEATURES
--- - Fast loading with compiling on a per-need basis
---
--- - 34 Unique themes, ported exactly from emacs
---
--- - 8 Extras Available for each theme, for a total of 272 extras
---
--- - Close to source. By using a script (see (`./lua/ef-themes/lib/parse.lua`))
---   to extract the colors and themes from the original `Emacs` theme, this
---   port can easily stay up to date with any new themes or modifications.
---
--- - Supports popular plugins. By using the original `Emacs` themes as source,
---   this theme uses the highlights similar to how they are used in `Emacs`
---
---@toc_entry Features
---@tag ef-themes-features

--- # Supported Modules ~
---
---@eval return require("ef-themes.lib.docgen").gen_modules()
---@text ## Enable All Modules ~
---
--- >lua
---    require("ef-themes").setup({
---      modules = {
---        blink = true,
---        cmp = true,
---        fzf = true,
---        gitsigns = true,
---        mini = true,
---        neogit = true,
---        render_markdown = true,
---        semantic_tokens = true,
---        snacks = true,
---        telescope = true,
---        treesitter = true,
---        which_key = true,
---      }
---    })
--- <
---
---@toc_entry Modules
---@tag ef-themes-modules

local EfThemes = {
  list = {
    -- All the dark themes, as defined by `ef-themes.el`
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
    -- All the light themes, as defined by `ef-themes.el`
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

---# Dark Themes ~
---
---@eval return require("ef-themes.lib.docgen").gen_colornames(true)
---
---
---@tag ef-themes-dark-themes

---# Light Themes ~
---
---@eval return require("ef-themes.lib.docgen").gen_colornames(false)
---
---
---@tag ef-themes-light-themes

---@alias Ef-Themes.ThemeOpts { bg: string, name: string }

--- Set options
---
--- # Notes ~
---   - Exposes the |EfThemes| global variable
---
---@toc_entry Setup
---@usage >lua
---  require("ef-themes").setup() -- use default config
---  require("ef-themes").setup({}) -- replace {} with your config.
---
---  -- EfThemes global is exposed after setup
---  EfThemes.setup({ transparent = true }) -- Update config
--- <
---@param opts? Ef-Themes.Config Config to use for ef-themes. See |ef-themes-defaults|
---@tag ef-themes.setup()
function EfThemes.setup(opts)
  _G.EfThemes = _G.EfThemes or EfThemes

  local utils = require("ef-themes.utils")

  require("ef-themes.config").setup(opts)
  EfThemes.__did_setup = true

  opts = require("ef-themes.config").extend()

  if opts.options.compile then
    local sep = package.config:sub(1, 1)
    local cache_path = string.format("%s%s%s", opts.options.compile_path, sep, "cache")
    local previous_hash = utils.read(cache_path)

    local git_path = debug.getinfo(1).source:sub(2, string.len("/lua/ef-themes/init.lua") * -1) .. ".git"
    local git_time = vim.fn.getftime(git_path)
    local hash = require("ef-themes.lib.compiler").hash(opts) .. (git_time == -1 and git_path or git_time)

    if previous_hash ~= hash then
      -- HACK: Don't delete the cached files, but rather make them invalid
      utils.for_file_in_dir_write(opts.options.compile_path, "()")
      utils.write_byte(cache_path, hash)
    end
  end
end

--- # Cleaning ~
--- Since this plugin relies on changes to git or your config to know when
--- your compiled colorscheme is invalid, it may create some problems if you
--- are no longer tracking this plugin with git.
--- This function allows for clearing all the compiled colorschemes, turning
--- them invalid.
---
---@usage >lua
---  require("ef-themes").clean()
--- <
function EfThemes.clean(opts)
  if not EfThemes.__did_setup then EfThemes.setup(opts) end
  opts = require("ef-themes.config").extend()

  -- HACK: Don't delete the cached files, but rather make them invalid
  require("ef-themes.utils").for_file_in_dir_write(opts.options.compile_path, "()")
end

--- Utility function to determine if an `ef-theme` is dark or not
---
---@param theme string The Ef-theme to check for
---@return boolean True if the theme is defined as a dark theme
---
---@usage >lua
---  local is_dark = require("ef-themes").is_dark(vim.g.colors_name) -- has to be an ef-theme
---  vim.notify(string.format("Using %s theme!", is_dark and "dark" or "light"), vim.log.levels.INFO)
--- <
function EfThemes.is_dark(theme) return vim.tbl_contains(EfThemes.list.dark, theme) end

local lock = false

--- Loads the ef-theme with opts
--- Updates the config with the new values
---
---@param theme_opts Ef-Themes.ThemeOpts
---@param opts? Ef-Themes.Config
---
---@private
function EfThemes.load(theme_opts, opts)
  if lock then return end

  if not EfThemes.__did_setup then EfThemes.setup(opts) end
  opts = require("ef-themes.config").extend(opts)

  if theme_opts.name == "ef-theme" then
    theme_opts.name = opts[vim.o.bg]
  end

  if vim.o.bg ~= theme_opts.bg or (theme_opts.name == "ef-theme") then
    if vim.g.colors_name == theme_opts.name then
      theme_opts.name = opts[vim.o.bg]
      theme_opts.bg = vim.o.bg
    else
      vim.o.background = theme_opts.bg
    end
  end

  local loaded = false
  lock = true

  if opts.options.compile then
    local compiled_file = vim.fs.joinpath(opts.options.compile_path, theme_opts.name .. ".lua")
    local f, _ = loadfile(compiled_file)
    if f then
      f()
      loaded = true
    end
  end

  if not loaded then
    local palette = require("ef-themes.themes").get_palette(theme_opts.name, opts)
    require("ef-themes.groups").build(palette, opts, theme_opts.name, theme_opts)
  end

  require("ef-themes.config").extend({
    [vim.o.bg] = theme_opts.name,
  })

  lock = false
end

--- API
---
--- `ef-themes.nvim` offers an api for using and modifying existing themes
--- It exposes the `EfThemes` global variable for using the main functions
--- Fields:
---   - <list> `({ light: string[], dark: string[]})`: Contains the names of
---     all light and dark themes
---   - <config> `({ defaults: table, options: table })`: Contains the default
---     options in `defaults`, and the active options in `options`
---
--- Functions:
---   - <select> |EfThemes.select()|
---   - <select_light> |EfThemes.select_light()|
---   - <select_dark> |EfThemes.select_light()|
---   - <load_random> |EfThemes.load_random()|
---   - <get_palette> |EfThemes.get_palette()|
---
---@usage >lua
---  require("ef-themes").setup() -- use default config
---
---  -- EfThemes global variable is available after setup
---  EfThemes.load_random({ bg = "dark" })
--- <
---
---@toc_entry API
---@tag EfThemes ef-themes-api

--- Select a Ef-theme using |vim.ui.select()|
---
---@param opts table Options. Possible Fields:
---   - <bg> `(string)` - Background to choose from. One of "any", "light", or "dark"
---     Default: "any"
function EfThemes.select(opts)
  opts = opts or { bg = "any" }
  local list
  if opts.bg == "any" then
    list = {}
    for i, theme in ipairs(EfThemes.list.light) do
      table.insert(list, theme)
    end
    for i, theme in ipairs(EfThemes.list.dark) do
      table.insert(list, theme)
    end
  else
    list = EfThemes.list[opts.bg]
  end
  if not list then return vim.notify("opts.bg must be either 'dark', 'light', or 'any'", vim.log.levels.ERROR) end

  vim.ui.select(list, {
    prompt = string.format("Select %sEf theme:", opts.bg ~= "any" and opts.bg .. " " or ""),
  }, function(choice)
    if not choice then return end

    local bg = opts.bg ~= "any" and opts.bg or (EfThemes.is_dark(choice) and "dark" or "light")
    EfThemes.load({ name = choice, bg = bg })

    vim.schedule(function() vim.api.nvim_exec_autocmds("ColorScheme", { pattern = choice }) end)
  end)
end

--- Select a dark Ef-theme using |vim.ui.select()|
function EfThemes.select_light() EfThemes.select({ bg = "light" }) end

--- Select a light Ef-theme using |vim.ui.select()|
function EfThemes.select_dark() EfThemes.select({ bg = "dark" }) end

--- Load a random theme
---@param opts table|nil Options. Possibile fields:
---    - <bg> `(string)` - Background to choose from. One of "any", "light", or "dark"
---      Default: "any"
function EfThemes.load_random(opts)
  opts = opts or { bg = "any" }

  local is_dark = opts.bg == "dark" or (opts.bg == "any" and math.random > 0.5)

  local theme_list
  if is_dark then
    theme_list = EfThemes.list.dark
    vim.o.bg = "dark"
  else
    theme_list = EfThemes.list.light
    vim.o.bg = "light"
  end

  local idx = math.random(1, #theme_list)
  EfThemes.load({ name = theme_list[idx], bg = is_dark and "dark" or "light" })
  vim.g.colors_name = theme_list[idx]

  vim.schedule(function() vim.api.nvim_exec_autocmds("ColorScheme", { pattern = theme_list[idx] }) end)
end

--- Gets the palette for a given ef-theme
---@param name string Name of Ef-theme
---@param opts? Ef-Themes.Config Config. See |ef-themes-defaults|
---
---@return Ef-Theme
function EfThemes.get_palette(name, opts)
  opts = require("ef-themes.config").extend(opts)
  return require("ef-themes.themes").get_palette(name, opts)
end

return EfThemes

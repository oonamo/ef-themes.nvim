local M = {
  extras = {
    -- aerc = { url = "https://git.sr.ht/~rjarry/aerc", label = "Aerc" },
    -- alacritty = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
    -- bat = { ext = "tmTheme", url = "https://github.com/sharkdp/bat", label = "Bat" },
    -- delta = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
    -- dunst = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
    -- fish = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
    -- foot = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
    -- gitui = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
    -- iterm = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
    kitty = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
    -- lua = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing and reference" },
    -- oomox = { ext = "oomox", url = "https://github.com/themix-project/themix-gui", label = "Oomox/Themix" },
    -- prismjs = { ext = "js", url = "https://prismjs.com", label = "PrismJS" },
    -- qt5ct = { ext = "conf", url = "https://sourceforge.net/projects/qt5ct/", label = "qt5ct" },
    -- terminator = {
    --   ext = "conf",
    --   url = "https://gnome-terminator.readthedocs.io/en/latest/config.html",
    --   label = "Terminator",
    -- },
    -- tilix = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
    -- tmux = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
    lazygit = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
    fzf = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
    ghostty = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
    wezterm = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
    windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
    firefox = { ext = "css", url = "https://www.userchrome.org/how-create-userchrome-css.html", label = "Firefox" },
    -- xfceterm = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
    -- xresources = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
    yazi = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
    -- vimium = { ext = "css", url = name = "Vimium" },
    vimium = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
    -- zathura = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
    -- zellij = { ext = "kdl", url = "https://github.com/zellij-org/zellij", label = "Zellij" },
  },
}

local Utils = require("ef-themes.utils")

function M.substitute(template, name, palette)
  return template:gsub("($%b{})", function(v)
    local subbed = v:sub(3, -2)
    if subbed == "_name" then return name end
    assert(palette[subbed], string.format("'%s' does not exist in ef-theme", subbed))
    return palette[subbed]
  end)
end

-- Reference: https://github.com/miikanissi/modus-themes.nvim/blob/9f0343bcb3be4dd5545624db135f2b1c369e7ce4/lua/modus-themes/extras/init.lua#L57
function M.generate(name, palette)
  for k, v in pairs(M.extras) do
    print("[Generating Extra]", v.label)
    local template = require("ef-themes.extras." .. k).template()
    local parsed = M.substitute(template, name, palette)

    local write_path = string.format("extras/%s/%s.%s", k, name, v.ext)
    if v.ext == "" then write_path = write_path:sub(1, -2) end

    print("[write]", write_path)
    Utils.write(write_path, parsed)
  end
end

return M

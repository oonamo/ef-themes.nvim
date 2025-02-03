# measure compile time
make clear

nvim --noplugin -u ./tests/mininit.lua -c "colorscheme ef-dream" +qa! --startuptime ./bench/compile.time

# Compiled times
for ($i = 0; $i -lt 5; $i++) {
  $str = $i.ToString()

  nvim --noplugin -u ./tests/mininit.lua -c "colorscheme ef-dream" +qa! --startuptime "./bench/call$str.time"
}

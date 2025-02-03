# measure compile time
function Write-TotalTime {
  param(
      [string]$File
      )

    $captures = rg -N "^.*?[0-9]{3}.[0-9]{3}  ([0-9]{3}.[0-9]{3})  [0-9]{3}.[0-9]{3}.*?ef-dream\.lua.*?$" "$FILE" -r '$1' | Out-String

    $array = $captures.Split([Environment]::NewLine)

    $n = $array.Count
    $delta = 0
    $m1 = 0
    $m2 = 0

    $min = [double]::MaxValue
    $max = -1

    for ($i = 0; $i -lt $n; $i++) {
      $line = $array[$i]

      if ($line -match '(\d{3}.\d{3})') {
        $x = [double]$Matches.0
        $delta = $x - $m1
        $m1 = $m1 + ($delta / ($i + 1))
        $m2 = $m2 + $delta * ($x - $m1)

        if ($x -lt $min) { 
          $min = $x
        }

        if ($x -gt $max) {
          $max = $x
        }
      }
  }

  $stats = [PSCustomObject]@{
    maximum=$max 
    mean=$m1 
    minimum=$min
    file=$File
  }

  $stats
}


for ($i = 0; $i -lt 5; $i++) {
  make clear >$null 2>&1
  $str = $i.ToString()
  $file = "./bench/not_compiled$str.time"

  nvim --noplugin -u ./tests/mininit.lua -c "colorscheme ef-dream" +qa! --startuptime $file
  Write-TotalTime $file
}

# Compiled times
for ($i = 0; $i -lt 5; $i++) {
  $str = $i.ToString()
  $file = "./bench/compiled$str.time"

  nvim --noplugin -u ./tests/mininit.lua -c "colorscheme ef-dream" +qa! --startuptime $file
  Write-TotalTime $file
}

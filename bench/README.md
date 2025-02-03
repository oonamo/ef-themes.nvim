# Benchmarks

## Latest
```text
pwsh -NoProfile -NonInteractive -c ./scripts/bench.ps1

maximum  mean minimum file
-------  ---- ------- ----
  13.88 13.22   12.55 ./bench/not_compiled0.time
  12.58 12.48   12.39 ./bench/not_compiled1.time
  12.85 12.80   12.74 ./bench/not_compiled2.time
  13.50 13.05   12.60 ./bench/not_compiled3.time
  12.97 12.92   12.88 ./bench/not_compiled4.time
   2.08  2.07    2.07 ./bench/compiled0.time
   2.12  2.07    2.02 ./bench/compiled1.time
   2.69  2.46    2.22 ./bench/compiled2.time
   2.09  2.06    2.02 ./bench/compiled3.time
   2.27  2.23    2.19 ./bench/compiled4.time

nvim --headless --noplugin -u ./tests/mininit.lua -l ./scripts/bench.lua
-------------|    Maximum   Mean      Minimum
Not Compiled |    53.302800  47.446365  45.970300
Compiled     |    51.356800  36.036405  33.830300
```

ifeq ($(OS),Windows_NT)
	SH = pwsh -NoProfile -NonInteractive -c
	BENCH_SCRIPT= ./scripts/bench.ps1
else
	SH = sh -c
	BENCH_SCRIPT= ./scripts/bench.sh
endif


.PHONY: test
test:
	nvim --headless --noplugin -u ./tests/mininit.lua -l ./scripts/minitest.lua -c

.PHONY: docs
docs:
	nvim --headless --noplugin -u ./tests/mininit.lua -l ./scripts/minidoc.lua

.PHONY: benchmark
benchmark:
	@echo "Benching: $(BENCH_SCRIPT)"
	make clear
	$(SH) $(BENCH_SCRIPT)
	nvim --headless --noplugin -u ./tests/mininit.lua -l ./scripts/bench.lua

.PHONY: build
build:
	./scripts/build

.PHONY: deps
deps:
	@mkdir -p deps
	git clone --filter=blob:none https://github.com/echasnovski/mini.nvim deps/mini.nvim

.PHONY: clear
clear:
	nvim --noplugin -u ./tests/mininit.lua -c "lua require('ef-themes').clean()" +qa!

.PHONY: clean
clean:
	make clear
	rm -rf deps
	rm -rf raw_themes

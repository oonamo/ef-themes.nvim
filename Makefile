
.PHONY: test
test:
	nvim --headless --noplugin -u ./tests/mininit.lua -l ./scripts/minitest.lua -c

.PHONY: build
build:
	./scripts/build

.PHONY: deps
deps:
	@mkdir -p deps
	git clone --filter=blob:none https://github.com/echasnovski/mini.nvim deps/mini.nvim

.PHONY: clean
clean:
	rm -rf deps
	rm -rf raw_themes

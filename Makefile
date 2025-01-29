nvim ?= nvim

.PHONY: test
test:
	for nvim_exec in $(nvim); do \
		prinf "\n======\n\n" ; \
		$$nvim_exec --version | head -n 1 && echo '' ; \
		$$nvim_exec --headless --noplugin -u ./tests/mininit.lua.lua \
			-c "lua require('mini.test').setup()" \
			-c "lua MiniTest.run()" ; \
	done

.PHONY: build
build:
	./scripts/build

.PHONY: deps
deps:
	@mkdir -p deps
	@mkdir -p deps/mini
	@mkdir -p deps/mini/lua
	wget https://raw.githubusercontent.com/echasnovski/mini.nvim/refs/heads/main/lua/mini/test.lua ./deps/lua/mini/

.PHONY: clean
clean:
	rm -rf deps
	rm -rf raw_themes

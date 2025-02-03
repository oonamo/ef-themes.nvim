# Changelog

## [1.1.0](https://github.com/oonamo/ef-themes.nvim/compare/v1.0.0...v1.1.0) (2025-02-03)


### Features

* **base:** add 'full' diagnostic style ([ca44659](https://github.com/oonamo/ef-themes.nvim/commit/ca446590e858c5d1d0f604320db1b55e53eda2e3))
* **benchmark:** create benchmark scripts ([e5c0f35](https://github.com/oonamo/ef-themes.nvim/commit/e5c0f35b124a23bc7428fa9e96fee2f4fa1a16be))
* **benchmarking:** Add `ps1` and `lua` scripts for benchmarking ([5f9330e](https://github.com/oonamo/ef-themes.nvim/commit/5f9330e8a7a6af9ba80a6596f6c68c7e6f1cb045))
* **core:** Add `custom themes`. ([59c0d9c](https://github.com/oonamo/ef-themes.nvim/commit/59c0d9cdb1a08a4ffe2684d0f466391e955e4e3e))
* **custom:** add information to custom color schemes ([811848f](https://github.com/oonamo/ef-themes.nvim/commit/811848f614a9d22d059988f6f675db1c7dc15d6f))
* **dev:** fix dev highlights with mini.hipatterns ([fe9d1fa](https://github.com/oonamo/ef-themes.nvim/commit/fe9d1fad02f98fec22a591e5a29c5e82707d7287))
* **dev:** fix dev highlights with mini.hipatterns ([1fffa56](https://github.com/oonamo/ef-themes.nvim/commit/1fffa56d9ef3f5c6783673ff9b2f9903033c97d9))
* **dev:** improve dev tooling with mini.hipatterns highlighting ([d177d84](https://github.com/oonamo/ef-themes.nvim/commit/d177d84a75ef0b3335b9efa0ed67c91f47b52912))
* **dev:** improve dev tooling with mini.hipatterns highlighting ([9aa2909](https://github.com/oonamo/ef-themes.nvim/commit/9aa2909334e595492923f12181e56733604113f4))
* **styles:** add "borderless" style for pickers ([ffa1689](https://github.com/oonamo/ef-themes.nvim/commit/ffa16895a3f739091fd9e9595a9deb92ea880944))


### Bug Fixes

* **api:** call setup with opts on `clean` if setup not called ([0e121a8](https://github.com/oonamo/ef-themes.nvim/commit/0e121a8fcfce3ed5c44c5b5412d76fbf78bf4f8c))
* **base:** fix issue with transparent background using incorrect key ([166177e](https://github.com/oonamo/ef-themes.nvim/commit/166177e7c03e2e435fd1e4ee4ff5d047d0d7b852))
* **ef-tint:** Fix terminal colors ([aebc0dc](https://github.com/oonamo/ef-themes.nvim/commit/aebc0dc451ef6adde13a38f2be6f0fb0690cecf2))
* **lualine:** fix incorrect path to lualine lib ([ae16d61](https://github.com/oonamo/ef-themes.nvim/commit/ae16d615e20ebc8c928d320f62ba64880973be52))
* **palette:** don't default to `NONE` if the key does not exist ([7cfc358](https://github.com/oonamo/ef-themes.nvim/commit/7cfc3580791d0305b7fce681c411d80db5eb2706))
* **palette:** fix typo: `unresolved` -&gt; `unspecified` ([ea905f8](https://github.com/oonamo/ef-themes.nvim/commit/ea905f8875ccb6efb624016ca6f959333fd9abda))
* **scripts:** fix benchmark scripts to use milliseconds ([efedfed](https://github.com/oonamo/ef-themes.nvim/commit/efedfedeb3203864a738689d90d48235329a0899))


### Performance Improvements

* **benchmarks:** Make benchmarks slightly more accurate, and use 'ms' ([01963f9](https://github.com/oonamo/ef-themes.nvim/commit/01963f91c9d132ab3f245fbf8e37f833e84d4f8e))

## 1.0.0 (2025-01-31)


### ⚠ BREAKING CHANGES

* **config:** this change will require the user to return a new table. This is done so it can be correctly proccessed and compiled, with fewer overhead
* move parsing and compiling files into a `lib` folder.
* **groups:** Groups now use opts and styles definied in the config
* **config:** This change breaks the previous config method of using an array such as `modules = { "base", "treesitter", "fzf"}` to toggle modules.
* **config:** This change introduces option compiling This will the file from a compiled file, instead of building it on every call. Compiling is done on a per-theme basis, so it will only compile as it needs

### Features

* add docs ([ee0479f](https://github.com/oonamo/ef-themes.nvim/commit/ee0479f2dc6f016e7f891022d3809036c04401df))
* add extras ([e7b9248](https://github.com/oonamo/ef-themes.nvim/commit/e7b924887d497aa055c1b75577b1bbc698d68c6d))
* add generation of modules in readme ([7fab00c](https://github.com/oonamo/ef-themes.nvim/commit/7fab00cdb215c85c04ab3fbbd68940217fcee428))
* add support for ci ([369defd](https://github.com/oonamo/ef-themes.nvim/commit/369defd64bc110783a8a45a92ca63414ad2de912))
* **base:** Improve Pmenu highlight for Neovim &gt;= 0.11 with support for ([bf35b98](https://github.com/oonamo/ef-themes.nvim/commit/bf35b98b5809a6a812ddb5137ad23475d98c3cb1))
* **cmp:** add cmp highlights ([e979a51](https://github.com/oonamo/ef-themes.nvim/commit/e979a51fabbfed67efb803b6b3fb47632210cc0f))
* **config:** Add compiling to speed up startup time ([5025cce](https://github.com/oonamo/ef-themes.nvim/commit/5025cce007a82f9992329bd0eb6d0ba4f209677a))
* **docs:** Use tables instead of list for cleaner output ([b0e8b1c](https://github.com/oonamo/ef-themes.nvim/commit/b0e8b1ce95efd3a5f3c0834a4f37b80551b08bbf))
* **gitsigns:** Add gitsigns highlights ([e9490fb](https://github.com/oonamo/ef-themes.nvim/commit/e9490fb12ac9aa6f94f8669376f3629ca9d9e8ee))
* **groups:** Add snacks.nvim highlights and transparent highlighting ([95bf2c9](https://github.com/oonamo/ef-themes.nvim/commit/95bf2c9cb361a73a3c168059ce51b90fbec1a741))
* **kinds:** Add LspKind highlights ([415b57f](https://github.com/oonamo/ef-themes.nvim/commit/415b57f63a2a78d477cd4b8d97d8b96be91b8cf4))
* **lualine:** Add lualine themes ([d68006c](https://github.com/oonamo/ef-themes.nvim/commit/d68006c8d297610dbc05076c8fc2312d024525b7))
* **neogit:** Add neogit highlights ([86fd6f9](https://github.com/oonamo/ef-themes.nvim/commit/86fd6f951fb9f4691699104550baee4fdeec1169))
* Remove submodule from being tracked ([c261fbe](https://github.com/oonamo/ef-themes.nvim/commit/c261fbea6ae0a574e80b5a79a073b8eb615b0ab2))
* **render_markdown:** Add render_markdown highlights ([4850934](https://github.com/oonamo/ef-themes.nvim/commit/485093462da86350d255e07ea507480dcb77af88))
* **telescope:** add telescope highlights ([b216ee2](https://github.com/oonamo/ef-themes.nvim/commit/b216ee23eaef8c8cc6e1aa8b49c86af320fcb48a))
* **treesitter:** Remove unused highlight ([3e411d9](https://github.com/oonamo/ef-themes.nvim/commit/3e411d90f752763d980dbdc2e5a6e0a7f86a009e))
* **whick_key:** Add highlights for which key ([3059144](https://github.com/oonamo/ef-themes.nvim/commit/30591441082a90f1dab966a4f490c223e934cf4c))


### Bug Fixes

* add tags to ignore file ([ebcc3c7](https://github.com/oonamo/ef-themes.nvim/commit/ebcc3c70eda61746331a9f2d45c5c991ef8889ff))
* **base:** Fix LspReference* highlights to use `bg_dim` instead of ([7d9f6ff](https://github.com/oonamo/ef-themes.nvim/commit/7d9f6ffe768252ee33d1e7e910981764d7702d2a))
* **base:** respect transparent for base color groups ([ce88994](https://github.com/oonamo/ef-themes.nvim/commit/ce8899467f1a2b9460e3e9221dc8b754813cb2ee))
* **base:** Use `bg_search_current` for `IncSearch` for better contrast. ([812eef3](https://github.com/oonamo/ef-themes.nvim/commit/812eef3030fd70cc2b3a0087eeae100f29266a57))
* **build:** fix another whitespace issue ([9fee66c](https://github.com/oonamo/ef-themes.nvim/commit/9fee66ce07f6da62c2c592c69b99de1bb0e20a5c))
* **build:** fix whitespace issue ([0eb5e68](https://github.com/oonamo/ef-themes.nvim/commit/0eb5e68612215817850e57d386def47e1e5e3f77))
* **build:** Update build script to use correct path ([17d0257](https://github.com/oonamo/ef-themes.nvim/commit/17d02579c151c0814f0e39aa3f8b6b5c82040e57))
* **ci:** Add exe permissions to build file ([4aa05fa](https://github.com/oonamo/ef-themes.nvim/commit/4aa05faf6c3782f61560cd4921533b112cfdf4ee))
* **ci:** add release manifest ([8756177](https://github.com/oonamo/ef-themes.nvim/commit/8756177268ea55ec86951e2d88141f25dae0f4b5))
* **ci:** Change path, and simplify checkout for building ([b2d9ab8](https://github.com/oonamo/ef-themes.nvim/commit/b2d9ab8248d6038f17b462550cefecbc471c64da))
* **ci:** Change quotes to single quotes ([b59084b](https://github.com/oonamo/ef-themes.nvim/commit/b59084baf6941ffcfb584142272f24459e534afb))
* **ci:** dont release manually ([84bd947](https://github.com/oonamo/ef-themes.nvim/commit/84bd94710a530b3e6c589e5c54f336cb1c61c455))
* **ci:** fix build script typo ([4c336b4](https://github.com/oonamo/ef-themes.nvim/commit/4c336b453df207afc17df1dddc041691b4a747c4))
* **ci:** fix issue with latest release not having a package for linuxx64 ([ae0a9c9](https://github.com/oonamo/ef-themes.nvim/commit/ae0a9c91cc8727b34b019cc394b57fbe4f83d9ac))
* **ci:** Fix path in build script, and manually update theme palettes to add stylua ignore prompt ([33e5a4a](https://github.com/oonamo/ef-themes.nvim/commit/33e5a4a755d65b1bfe701526cdf87d4b60cdcc68))
* **ci:** Ignore parsed files, and try to run diffrently ([f9abecd](https://github.com/oonamo/ef-themes.nvim/commit/f9abecd969798669b0c5844e9849681eccd48e15))
* **ci:** make dependencies before making docs ([0391766](https://github.com/oonamo/ef-themes.nvim/commit/0391766ab67ce1c0426fec1073d1ab35e4718a49))
* **ci:** remove changelog and manifest ([8197ff3](https://github.com/oonamo/ef-themes.nvim/commit/8197ff39c5222f3de57b338154baae3b5fee1d37))
* **ci:** revert incorrect version ([4fb4117](https://github.com/oonamo/ef-themes.nvim/commit/4fb41173bf8cc5736c32b45babc51d55e4f70cba))
* **ci:** update auogenerate commit message for docs ([c1ca17d](https://github.com/oonamo/ef-themes.nvim/commit/c1ca17d2454b0b2d53c75cf182e7d82a2930931c))
* **ci:** Use correct version for all tasks ([0f39746](https://github.com/oonamo/ef-themes.nvim/commit/0f39746b2d9af04ca8886822e159f4e86e7da633))
* **ci:** Use single quote ([8ee64ce](https://github.com/oonamo/ef-themes.nvim/commit/8ee64ce54d96d7819f6de950c37d14458a2b3b5d))
* **compiler:** compiling now sets the correct background option ([345c26c](https://github.com/oonamo/ef-themes.nvim/commit/345c26ce777ca602cd3d530fd5efe2cd54b857de))
* **compiler:** Use the correct path to the .git file for caching ([019c65d](https://github.com/oonamo/ef-themes.nvim/commit/019c65d38a24a3c60641c3a57ff1a70a1bf9d88c))
* **compiler:** Use the resolved highlight for compiling ([e42b2c0](https://github.com/oonamo/ef-themes.nvim/commit/e42b2c0686d120f36614dc52af6770411123dba1))
* **config:** `on_colors` now correctly resolves references ([1b52fc4](https://github.com/oonamo/ef-themes.nvim/commit/1b52fc4c96e334e2064df430a4cf3c99050fb502))
* **core:** fix select* functions ([228b004](https://github.com/oonamo/ef-themes.nvim/commit/228b0043f222e0a01e641de422f30c90e2d132a1))
* **docgen:** Use `modules:end` instead of `extras:end` for replacing ([f4ec099](https://github.com/oonamo/ef-themes.nvim/commit/f4ec099989a91ec1ac8af9372d94455ff7af8198))
* **docs:** fix incorrect tag ([30fc723](https://github.com/oonamo/ef-themes.nvim/commit/30fc72316f1fc45daaebf79d678f1eaa6c5a51e2))
* **docs:** require instead of calling global to avoid setup step ([3581da7](https://github.com/oonamo/ef-themes.nvim/commit/3581da7d9cc417081385b1d28735024255a00af5))
* **docs:** use `toc_entry` instead of `toc` ([97d3ca8](https://github.com/oonamo/ef-themes.nvim/commit/97d3ca85d16deb2ea28842ee79b671df6ecd0b4a))
* **extras:** fix fzf highlights ([832f452](https://github.com/oonamo/ef-themes.nvim/commit/832f452243b2870f269db2aae8ec9a9dd411e714))
* **extras:** fix fzf missing quote ([31e749e](https://github.com/oonamo/ef-themes.nvim/commit/31e749e20f3c1dda3593af53c33b0e89ee066e0a))
* **extras:** remove another unimplemented extra from table ([6ba3f6e](https://github.com/oonamo/ef-themes.nvim/commit/6ba3f6ee4bfb296c970a10ee3be10c12b2842648))
* **extras:** remove debug statements ([929a689](https://github.com/oonamo/ef-themes.nvim/commit/929a68921e37ecdf78eddef03a43291866b5341a))
* **extras:** Remove unimplemented extra from table ([fdbd4a1](https://github.com/oonamo/ef-themes.nvim/commit/fdbd4a169f8bccd046a6adf9b5f35f402f50618a))
* **extras:** use yml instead of yml ([b31536d](https://github.com/oonamo/ef-themes.nvim/commit/b31536d38172630d32e8b9e42bd17fd0e7bb8e87))
* **fzf:** Fix shell escape + use actual corresponding highlights ([13013d2](https://github.com/oonamo/ef-themes.nvim/commit/13013d21e2ae641ecceb30beb117a25c40b945d6))
* **groups:** fix typo `whick-key` -&gt; `which-key` ([c1bbee2](https://github.com/oonamo/ef-themes.nvim/commit/c1bbee20d94d4c13bb95e9c177fdbf44fdc424a8))
* Ignore deps ([a685631](https://github.com/oonamo/ef-themes.nvim/commit/a68563136c7253f06fe663f23e13cf17a2141fd2))
* **make:** Use the -P to place the output file in the correct location ([144b00d](https://github.com/oonamo/ef-themes.nvim/commit/144b00d68e6bed5056999f41d3e253a638a61d26))
* **mini:** Improve MiniCursorWord highlights ([bc5fa67](https://github.com/oonamo/ef-themes.nvim/commit/bc5fa671ef87aa4dfb97733c46dbfcbb95b28a2c))
* **mini:** make `MiniJump2dSpotUnique` to be more obvious ([bb35a77](https://github.com/oonamo/ef-themes.nvim/commit/bb35a7702b2191c9be0eac5a98e624951a826369))
* **mini:** make MiniJump2dSpotUnique more obvious, and remove wrongly ([e0320f0](https://github.com/oonamo/ef-themes.nvim/commit/e0320f0e6afd65de8e501808c6f51d86600b7ccd))
* **parser:** ignore any building errors and log them instead ([b8da67e](https://github.com/oonamo/ef-themes.nvim/commit/b8da67ec62c132cb468975ffbbcb3f4447272a06))
* **parser:** Ignore stylua for parsed files ([ab097e2](https://github.com/oonamo/ef-themes.nvim/commit/ab097e20951e451603e155fef5882831091e778e))
* remove raw_themes from being tracked ([c8474fb](https://github.com/oonamo/ef-themes.nvim/commit/c8474fb0278c648dfb20bab1d595b92f6b48b13c))
* remove verbose output ([1f0de1b](https://github.com/oonamo/ef-themes.nvim/commit/1f0de1b7058de8e0394fe72e2bf8c5967e1d31b0))
* **themes:** fix `__resolve_palette` function ([f6bc5c5](https://github.com/oonamo/ef-themes.nvim/commit/f6bc5c50b176424803e3d79bb20540682d186010))


### Code Refactoring

* **config:** return a new table in `on_highlights` rather then inplace substitution ([c95daf3](https://github.com/oonamo/ef-themes.nvim/commit/c95daf388fb7205767a738f3348b10531b29756b))
* **config:** Use a 'boolean' table instead of an array for ([bb80a06](https://github.com/oonamo/ef-themes.nvim/commit/bb80a060cdc6e8d4d8d131579b37dddb95e7c875))
* **groups:** Groups now use opts and styles definied in the config ([7f31138](https://github.com/oonamo/ef-themes.nvim/commit/7f31138d04a66e2b9e21ade3af33886c45ade434))
* move parsing and compiling files into a `lib` folder. ([b19d98e](https://github.com/oonamo/ef-themes.nvim/commit/b19d98e6596ea17af5b71a34fa8a25c74e780e7a))

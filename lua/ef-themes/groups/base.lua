local M = {}

function M.get(c, opts)
	return {
		Cursor = { fg = c.fg_main, bg = c.bg_main },
		CursorIM = { link = "Cursor" },
		lCursor = { link = "Cursor" },
		VertSplit = { fg = c.border },
		Error = { fg = c.err, bold = true },
		CursorLine = { bg = c.bg_hl_line },
		NormalFloat = { bg = c.bg_dim, fg = c.fg_main },
		["@markup.link"] = { fg = c.link, underline = true, sp = c.border },
		WarningMsg = { fg = c.warning, bold = true },

		DiffAdd = { bg = c.bg_added },
		DiffChange = { bg = c.bg_changed },
		DiffDelete = { bg = c.bg_removed },

		Comment = { fg = c.comment, italic = true }, -- any comment
		Pmenu = { fg = c.fg_main, bg = c.bg_inactive },
		PmenuSel = { fg = c.fg_main, bg = c.bg_completion },
		PmenuMatchSel = { fg = c.fg_dim },
		PmenuMatch = { fg = c.bg_search_match },
		ColorColumn = { bg = c.bg_alt }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = c.fg_alt }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		CursorColumn = { bg = c.bg_alt }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		Directory = { fg = c.accent_0 }, -- directory names (and other special names in listings)
		DiffText = { bg = c.bg_added_refine }, -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer = { fg = c.bg_main }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = c.err }, -- error messages on the command line
		WinSeparator = { fg = c.border, bold = true }, -- the column separating vertically split windows
		Folded = { fg = c.border, bg = c.bg_alt }, -- line used for closed folds
		FoldColumn = { bg = c.bg_main, fg = c.comment }, -- 'foldcolumn'
		SignColumn = { bg = c.bg_main, fg = c.fg_alt }, -- column where |signs| are displayed
		-- SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
		Substitute = { bg = c.bg_search_replace, fg = c.fg_intense }, -- |:substitute| replacement text highlighting
		LineNr = { fg = c.fg_dim }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = c.fg_intense, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		LineNrAbove = { fg = c.fg_dim },
		LineNrBelow = { fg = c.fg_dim },
		MatchParen = { fg = c.fg_intense, bg = c.bg_paren }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = c.accent_0, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = c.fg_main }, -- Area for messages and cmdline
		MoreMsg = { fg = c.blue }, -- |more-prompt|
		NonText = { fg = c.fg_dim }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = c.fg_main, bg = c.bg_main },
		-- NormalNC = { fg = c.fg_main, bg = c.bg_dim }, -- normal text in non-current windows
		NormalNC = { link = "Normal" }, -- normal text in non-current windows
		NormalSB = { fg = c.fg_alt, bg = c.bg_alt }, -- normal text in sidebar
		FloatBorder = { fg = c.border, bg = c.bg_dim },
		FloatTitle = { fg = c.name, bg = c.bg_dim },
		Question = { fg = c.accent_3 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = c.bg_region, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = c.bg_search, fg = c.fg_intense }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = c.bg_search_match, fg = c.fg_intense }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = c.bg_search_current },
		SpecialKey = { fg = c.accent_0 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { link = "DiagnosticUnderlineError" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { link = "DiagnosticUnderlineWarn" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { link = "DiagnosticUnderlineWarn" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { link = "DiagnosticUnderlineWarn" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = c.fg_mode_line, bg = c.bg_mode_line }, -- status line of current window
		StatusLineNC = { fg = c.fg_alt, bg = c.bg_alt }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = c.bg_tab_bar, fg = c.fg_dim }, -- tab pages line, not active tab page label
		TabLineFill = { bg = c.bg_main }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.fg_alt, bg = c.bg_tab_current }, -- tab pages line, active tab page label
		Title = { fg = c.rainbow_0 }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = c.bg_region, fg = c.fg_region }, -- Visual mode selection
		VisualNOS = { bg = c.bg_region }, -- Visual mode selection when vim is "Not Owning the Selection".
		Whitespace = { fg = c.fg_dim }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = c.bg_region }, -- current match in 'wildmenu' completion
		WinBar = { link = "StatusLine" }, -- window bar
		WinBarNC = { link = "StatusLineNC" }, -- window bar in inactive windows
		--
		Bold = { bold = true, fg = c.fg_main }, -- (preferred) any bold text
		Character = { fg = c.accent_2 }, --  a character constant: 'c', '\n'
		Constant = { fg = c.constant }, -- (preferred) any constant
		Debug = { fg = c.orange }, --    debugging statements
		Delimiter = { link = "Comment" }, --  character that needs attention
		Function = { fg = c.fnname },
		Identifier = { fg = c.identifier },
		Italic = { italic = true, fg = c.fg_main }, -- (preferred) any italic text
		Keyword = { fg = c.keyword, bold = true },
		Variable = { fg = c.fg_main },
		Operator = { link = "Bold" }, -- "sizeof", "+", "*", etc.
		PreProc = { fg = c.preprocessor }, -- (preferred) generic Preprocessor
		Special = { fg = c.blue_faint }, -- (preferred) any special symbol
		Statement = { fg = c.magenta_cooler }, -- (preferred) any statement
		String = { fg = c.string }, --   a string constant: "this is a string"
		Todo = { fg = c.prose_todo, bg = c.yellow_intense }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Type = { fg = c.type }, -- (preferred) int, long, char, etc.
		Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
		-- debugBreakpoint = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
		-- debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
		-- dosIniLabel = "@property",
		-- helpCommand = { bg = c.terminal_black, fg = c.blue },
		-- htmlH1 = { fg = c.magenta, bold = true },
		-- htmlH2 = { fg = c.blue, bold = true },
		qfFileName = { fg = c.name },
		qfLineNr = { fg = c.fg_dim },

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own.
		LspReferenceText = { bg = c.fg_dim }, -- used for highlighting "text" references
		LspReferenceRead = { bg = c.fg_dim }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = c.fg_dim }, -- used for highlighting "write" references
		LspSignatureActiveParameter = { bg = c.bg_hover, bold = true },
		LspCodeLens = { fg = c.comment },
		LspInlayHint = { bg = c.bg_inactive, fg = c.fg_intense },
		LspInfoBorder = { fg = c.border, bg = c.menu },

		-- diagnostics
		DiagnosticError = { fg = c.err }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		-- DiagnosticUnnecessary = { fg = c.terminal_black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextError = { fg = c.err, bg = c.bg_err },
		DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.bg_warning }, -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg_info }, -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint = { fg = c.info, bg = c.bg_info }, -- Used for "Hint" diagnostic virtual text
		DiagnosticUnderlineError = { undercurl = true, sp = c.err }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics
		--
		-- -- Health
		healthError = { fg = c.err },
		healthSuccess = { fg = c.green },
		healthWarning = { fg = c.warning },

		diffAdded = { fg = c.fg_added },
		diffRemoved = { fg = c.fg_removed },
		diffChanged = { fg = c.fg_changed },
		diffOldFile = { fg = c.yellow },
		diffNewFile = { fg = c.orange },
		diffFile = { fg = c.blue },
		diffLine = { fg = c.comment },
		diffIndexLine = { fg = c.magenta },
		helpExample = { fg = c.comment },

		markdownH1 = { fg = c.rainbow_1, bold = true },
		markdownH2 = { fg = c.rainbow_2, bold = true },
		markdownH3 = { fg = c.rainbow_3, bold = true },
		markdownH4 = { fg = c.rainbow_4, bold = true },
		markdownH5 = { fg = c.rainbow_5, bold = true },
		markdownH6 = { fg = c.rainbow_6, bold = true },

		htmlH1 = { link = "markdownH1" },
		htmlH2 = { link = "markdownH2" },
		htmlH3 = { link = "markdownH3" },
		htmlH4 = { link = "markdownH4" },
		htmlH5 = { link = "markdownH5" },
		htmlH6 = { link = "markdownH6" },
	}
end

return M

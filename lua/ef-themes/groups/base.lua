local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		-- -- Health
		-- DiagnosticUnnecessary = { fg = c.terminal_black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		-- NormalNC = { fg = c.fg_main, bg = c.bg_dim }, -- normal text in non-current windows
		-- SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
		-- These groups are for the native LSP client. Some other LSP clients may
		-- debugBreakpoint = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
		-- diagnostics
		-- dosIniLabel = "@property",
		-- helpCommand = { bg = c.terminal_black, fg = c.blue },
		-- use these groups, or use their own.
		Bold                        = { bold = true, fg = c.fg_main }                 , -- (preferred) any bold text
		Character                   = { fg = c.accent_2 }                             , --  a character constant: 'c', '\n'
		ColorColumn                 = { bg = c.bg_alt }                               , -- used for the columns set with 'colorcolumn'
		Comment                     = { fg = c.comment, italic = true }               , -- any comment
		Conceal                     = { fg = c.fg_alt }                               , -- placeholder characters substituted for concealed text (see 'conceallevel')
		Constant                    = { fg = c.constant }                             , -- (preferred) any constant
		CurSearch                   = { bg = c.bg_search_current }                    ,
		Cursor                      = { fg = c.bg_main, bg = c.cursor }              ,
		CursorColumn                = { bg = c.bg_alt }                               , -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorIM                    = { link = "Cursor" }                             ,
		CursorLine                  = { bg = c.bg_hl_line }                           ,
		CursorLineNr                = { fg = c.fg_intense, bold = true }              , -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		Debug                       = { fg = c.orange }                               , --    debugging statements
		Delimiter                   = { link = "Comment" }                            , --  character that needs attention
		DiagnosticError             = { fg = c.err }                                  , -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint              = { fg = c.info }                                 , -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo              = { fg = c.info }                                 , -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticUnderlineError    = { undercurl = true, sp = c.err }                , -- Used to underline "Error" diagnostics
		DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }               , -- Used to underline "Hint" diagnostics
		DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }               , -- Used to underline "Information" diagnostics
		DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }            , -- Used to underline "Warning" diagnostics
		DiagnosticVirtualTextError  = { fg = c.err, bg = c.bg_err }                   ,
		DiagnosticVirtualTextHint   = { fg = c.info, bg = c.bg_info }                 , -- Used for "Hint" diagnostic virtual text
		DiagnosticVirtualTextInfo   = { fg = c.info, bg = c.bg_info }                 , -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextWarn   = { fg = c.warning, bg = c.bg_warning }           , -- Used for "Warning" diagnostic virtual text
		DiagnosticWarn              = { fg = c.warning }                              , -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiffAdd                     = { bg = c.bg_added }                             ,
		DiffChange                  = { bg = c.bg_changed }                           ,
		DiffDelete                  = { bg = c.bg_removed }                           ,
		DiffText                    = { bg = c.bg_added_refine }                      , -- diff mode: Changed text within a changed line |diff.txt|
		Directory                   = { fg = c.accent_0 }                             , -- directory names (and other special names in listings)
		EndOfBuffer                 = { fg = c.bg_main }                              , -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		Error                       = { fg = c.err, bold = true }                     ,
		ErrorMsg                    = { fg = c.err }                                  , -- error messages on the command line
		FloatBorder                 = { fg = c.border, bg = c.bg_dim }                ,
		FloatTitle                  = { fg = c.name, bg = c.bg_dim }                  ,
		FoldColumn                  = { bg = c.bg_main, fg = c.comment }              , -- 'foldcolumn'
		Folded                      = { fg = c.border, bg = c.bg_alt }                , -- line used for closed folds
		Function                    = { fg = c.fnname }                               ,
		Identifier                  = { fg = c.identifier }                           ,
		IncSearch                   = { bg = c.bg_search_current, fg = c.fg_intense }   , -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Italic                      = { italic = true, fg = c.fg_main }               , -- (preferred) any italic text
		Keyword                     = { fg = c.keyword, bold = true }                 ,
		LineNr                      = { fg = c.fg_dim }                               , -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove                 = { fg = c.fg_dim }                               ,
		LineNrBelow                 = { fg = c.fg_dim }                               ,
		LspCodeLens                 = { fg = c.comment }                              ,
		LspInfoBorder               = { fg = c.border, bg = c.menu }                  ,
		LspInlayHint                = { bg = c.bg_inactive, fg = c.fg_intense }       ,
		LspReferenceRead            = { bg = c.fg_dim }                               , -- used for highlighting "read" references
		LspReferenceText            = { bg = c.fg_dim }                               , -- used for highlighting "text" references
		LspReferenceWrite           = { bg = c.fg_dim }                               , -- used for highlighting "write" references
		LspSignatureActiveParameter = { bg = c.bg_hover, bold = true }                ,
		MatchParen                  = { fg = c.fg_intense, bg = c.bg_paren }          , -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg                     = { fg = c.accent_0, bold = true }                , -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg                     = { fg = c.blue }                                 , -- |more-prompt|
		MsgArea                     = { fg = c.fg_main }                              , -- Area for messages and cmdline
		NonText                     = { fg = c.fg_dim }                               , -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal                      = { fg = c.fg_main, bg = c.bg_main }              ,
		NormalFloat                 = { bg = c.bg_dim, fg = c.fg_main }               ,
		NormalNC                    = { link = "Normal" }                             , -- normal text in non-current windows
		NormalSB                    = { fg = c.fg_alt, bg = c.bg_alt }                , -- normal text in sidebar
		Operator                    = { link = "Bold" }                               , -- "sizeof", "+", "*", etc.
		Pmenu                       = { fg = c.fg_main, bg = c.bg_inactive }          ,
		PmenuMatch                  = { fg = c.bg_search_match }                      ,
		PmenuMatchSel               = { fg = c.fg_dim }                               ,
		PmenuSel                    = { fg = c.fg_main, bg = c.bg_completion }        ,
		PreProc                     = { fg = c.preprocessor }                         , -- (preferred) generic Preprocessor
		Question                    = { fg = c.accent_3 }                             , -- |hit-enter| prompt and yes/no questions
		QuickFixLine                = { bg = c.bg_region, bold = true }               , -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search                      = { bg = c.bg_search, fg = c.fg_intense }         , -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SignColumn                  = { bg = c.bg_main, fg = c.fg_alt }               , -- column where |signs| are displayed
		Special                     = { fg = c.blue_faint }                           , -- (preferred) any special symbol
		SpecialKey                  = { fg = c.accent_0 }                             , -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad                    = { link = "DiagnosticUnderlineError" }           , -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap                    = { link = "DiagnosticUnderlineWarn" }            , -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal                  = { link = "DiagnosticUnderlineWarn" }            , -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare                   = { link = "DiagnosticUnderlineWarn" }            , -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		Statement                   = { fg = c.magenta_cooler }                       , -- (preferred) any statement
		StatusLine                  = { fg = c.fg_mode_line, bg = c.bg_mode_line }    , -- status line of current window
		StatusLineNC                = { fg = c.fg_alt, bg = c.bg_alt }                , -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		String                      = { fg = c.string }                               , --   a string constant: "this is a string"
		Substitute                  = { bg = c.bg_search_replace, fg = c.fg_intense } , -- |:substitute| replacement text highlighting
		TabLine                     = { bg = c.bg_tab_bar, fg = c.fg_dim }            , -- tab pages line, not active tab page label
		TabLineFill                 = { bg = c.bg_main }                              , -- tab pages line, where there are no labels
		TabLineSel                  = { fg = c.fg_alt, bg = c.bg_tab_current }        , -- tab pages line, active tab page label
		Title                       = { fg = c.rainbow_0 }                            , -- titles for output from ":set all", ":autocmd" etc.
		Todo                        = { fg = c.prose_todo, bg = c.yellow_intense }    , -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Type                        = { fg = c.type }                                 , -- (preferred) int, long, char, etc.
		Underlined                  = { underline = true }                            , -- (preferred) text that stands out, HTML links
		Variable                    = { fg = c.fg_main }                              ,
		VertSplit                   = { fg = c.border }                               ,
		Visual                      = { bg = c.bg_region, fg = c.fg_region }          , -- Visual mode selection
		VisualNOS                   = { bg = c.bg_region }                            , -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg                  = { fg = c.warning, bold = true }                 ,
		Whitespace                  = { fg = c.fg_dim }                               , -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu                    = { bg = c.bg_region }                            , -- current match in 'wildmenu' completion
		WinBar                      = { link = "StatusLine" }                         , -- window bar
		WinBarNC                    = { link = "StatusLineNC" }                       , -- window bar in inactive windows
		WinSeparator                = { fg = c.border, bold = true }                  , -- the column separating vertically split windows
		["@markup.link"]            = { fg = c.link, underline = true, sp = c.border },
		diffAdded                   = { fg = c.fg_added }                             ,
		diffChanged                 = { fg = c.fg_changed }                           ,
		diffFile                    = { fg = c.blue }                                 ,
		diffIndexLine               = { fg = c.magenta }                              ,
		diffLine                    = { fg = c.comment }                              ,
		diffNewFile                 = { fg = c.orange }                               ,
		diffOldFile                 = { fg = c.yellow }                               ,
		diffRemoved                 = { fg = c.fg_removed }                           ,
		healthError                 = { fg = c.err }                                  ,
		healthSuccess               = { fg = c.green }                                ,
		healthWarning               = { fg = c.warning }                              ,
		helpExample                 = { fg = c.comment }                              ,
		htmlH1                      = { link = "markdownH1" }                         ,
		htmlH2                      = { link = "markdownH2" }                         ,
		htmlH3                      = { link = "markdownH3" }                         ,
		htmlH4                      = { link = "markdownH4" }                         ,
		htmlH5                      = { link = "markdownH5" }                         ,
		htmlH6                      = { link = "markdownH6" }                         ,
		lCursor                     = { link = "Cursor" }                             ,
		markdownH1                  = { fg = c.rainbow_1, bold = true }               ,
		markdownH2                  = { fg = c.rainbow_2, bold = true }               ,
		markdownH3                  = { fg = c.rainbow_3, bold = true }               ,
		markdownH4                  = { fg = c.rainbow_4, bold = true }               ,
		markdownH5                  = { fg = c.rainbow_5, bold = true }               ,
		markdownH6                  = { fg = c.rainbow_6, bold = true }               ,
		qfFileName                  = { fg = c.name }                                 ,
		qfLineNr                    = { fg = c.fg_dim }                               ,
	}
end

return M

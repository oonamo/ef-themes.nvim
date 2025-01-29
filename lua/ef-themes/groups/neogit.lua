local M = {}

---@param c Ef-Theme
---@param opts Ef-themes.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeogitBranch                  = { fg   = c.accent_0 },
    NeogitDiffAddHighlight        = { fg   = c.fg_added, bg             = c.bg_added },
    NeogitDiffContextHighlight    = { bg   = c.bg_dim },
    NeogitDiffDeleteHighlight     = { fg   = c.fg_removed, bg           = c.bg_removed },
    NeogitHunkHeader              = { bg   = c.bg_alt },
    NeogitHunkHeaderHighlight     = { bg   = c.bg_active, fg            = c.fg_intense, bold = true },
    NeogitRemote                  = { fg   = c.accent_1 },

    NeogitBranchHead              = "NeogitBranch", -- Accent highlight for current HEAD in LogBuffer
    NeogitObjectId                = { fg   = c.identifier }, -- Object's SHA hash
    NeogitStash                   = { fg   = c.fg_dim }, -- Stash name
    NeogitRebaseDone              = { fg   = c.magenta, bold            = true }, -- Current position within rebase
    NeogitTagName                 = { fg   = c.accent_3 }, -- Closest Tag name
    -- NeogitTagDistance          = {}, -- Number of commits between the tag and HEAD
    -- NeogitStatusHEAD           = {}, -- The left text in the HEAD section

    NeogitSectionHeader           = { bold = true },
    -- NeogitUnpushedTo           = {}, --Linked to NeogitSectionHeader
    -- NeogitUnmergedInto         = {}, --^
    -- NeogitUnpulledFrom         = {}, --^
    -- NeogitUntrackedfiles       = {}, --^
    -- NeogitUnstagedchanges      = {}, --^
    -- NeogitUnmergedchanges      = {}, --^
    -- NeogitUnpushedchanges      = {}, --^
    -- NeogitUnpulledchanges      = {}, --^
    -- NeogitRecentcommits        = {}, --^
    -- NeogitStagedchanges        = {}, --^
    NeogitStashes                 = { fg   = c.fg_dim }, --^
    NeogitRebasing                = { fg   = c.magenta, bold            = true }, --^
    NeogitReverting               = { fg   = c.cyan, bold               = true }, --^
    NeogitPicking                 = { fg   = c.info }, --^
    NeogitMerging                 = { fg   = c.info }, --^
    NeogitBisecting               = { fg   = c.cyan, bold               = true }, --^
    -- NeogitSectionHeaderCount   = {}, --The number, for sections with a number.

    -- NeogitChangeModified       = {},
    -- NeogitChangeAdded          = {},
    -- NeogitChangeDeleted        = {},
    -- NeogitChangeRenamed        = {},
    -- NeogitChangeUpdated        = {},
    -- NeogitChangeCopied         = {},
    -- NeogitChangeNewFile        = {},
    -- NeogitChangeUnmerged       = {},

    NeogitDiffContext             = { fg   = c.fg_dim },
    NeogitDiffAdd                 = { bg   = c.bg_added_faint, fg       = c.fg_added },
    NeogitDiffDelete              = { bg   = c.bg_removed_faint, fg     = c.fg_removed },
    NeogitDiffHeader              = { fg   = c.accent_0, bold           = true },
    -- NeogitActiveItem           = {},

    NeogitDiffHeaderHighlight     = { bg   = c.bg_alt },
    NeogitHunkHeaderCursor        = { bold = true, bg                   = c.bg_active, fg    = c.fg_intense },
    NeogitDiffContextCursor       = { bg   = c.bg_dim },
    NeogitDiffAddCursor           = { bg   = c.bg_added, fg             = c.fg_added },
    NeogitDiffDeleteCursor        = { bg   = c.bg_removed, fg           = c.fg_removed },
    NeogitDiffHeaderCursor        = { bg   = c.bg_hover_secondary, fg   = c.fg_intense, bold = true },

    NeogitFilePath                = { fg   = c.name }, --Applied to filepath
    -- NeogitCommitViewHeader     = {}, --Applied to header of Commit View

    NeogitGraphAuthor             = { fg   = c.name }, -- Applied to the commit's author in graph view
    NeogitGraphBlack              = { fg   = c.fg_term_black }, -- Used when --colors is enabled for graph
    NeogitGraphBlackBold          = { fg   = c.fg_term_black, bold      = true },
    NeogitGraphRed                = { fg   = c.bg_graph_red_0 },
    NeogitGraphRedBold            = { fg   = c.bg_graph_red_0, bold     = true },
    NeogitGraphGreen              = { fg   = c.bg_graph_green_0 },
    NeogitGraphGreenBold          = { fg   = c.bg_graph_green_0, bold   = true },
    NeogitGraphYellow             = { fg   = c.bg_graph_yellow_0 },
    NeogitGraphYellowBold         = { fg   = c.bg_graph_yellow_0, bold  = true },
    NeogitGraphBlue               = { fg   = c.bg_graph_blue_0 },
    NeogitGraphBlueBold           = { fg   = c.bg_graph_blue_0, bold    = true },
    NeogitGraphPurple             = { fg   = c.bg_graph_magenta_0 },
    NeogitGraphPurpleBold         = { fg   = c.bg_graph_magenta_0, bold = true },
    NeogitGraphCyan               = { fg   = c.bg_graph_cyan_0 },
    NeogitGraphCyanBold           = { fg   = c.bg_graph_cyan_0, bold    = 0 },
    NeogitGraphWhite              = { fg   = c.fg_term_white },
    NeogitGraphWhiteBold          = { fg   = c.fg_term_white, bold      = true },
    -- NeogitGraphGray            = { fg   = c.fg_term_ },
    -- NeogitGraphBoldGray        = {},
    -- NeogitGraphOrange          = {},
    NeogitSignatureGood           = { fg   = c.info, bold               = true }, -- For highlighting the commit hash when
    NeogitSignatureBad            = { fg   = c.err, bold                = true }, --show-signature is passed
    NeogitSignatureMissing        = { fg   = c.err, bold                = true },
    -- NeogitSignatureNone        = {},
    NeogitSignatureGoodUnknown    = { fg   = c.fg_dim },
    NeogitSignatureGoodExpired    = { fg   = c.warning },
    NeogitSignatureGoodExpiredKey = { fg   = c.warning },
    NeogitSignatureGoodRevokedKey = { fg   = c.warning, bold            = true },
  }
end

return M

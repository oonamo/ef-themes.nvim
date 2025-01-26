local M = {}

function M.template()
  return [[
gui:
  nerdFontsVersion: "3"
  theme:
      activeBorderColor:
        - "${yellow_cooler}"
        - "bold"
      inactiveBorderColor:
        - "${border}"
      searchingActiveBorderColor:
        - "${bg_search_match}"
        - "bold"
      optionsTextColor:
        - "${fg_alt}"
      selectedLineBgColor:
        - "${bg_region}"
      cherryPickedCommitFgColor:
        - "${blue}"
      cherryPickedCommitBgColor:
        - "${magenta}"
      markedBaseCommitFgColor:
        - "${blue}"
      markedBaseCommitBgColor:
        - "${yellow}"
      unstagedChangesColor:
        - "${red}"
      defaultFgColor:
        - "${fg_main}"
  ]]
end

return M

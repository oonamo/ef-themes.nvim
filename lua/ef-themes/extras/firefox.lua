local M = {}

function M.template()
  return [[
* {
  color-scheme: only ${_style} !important;
}

:root {
  /* Palette */
  --accent-0: ${accent_0};
  --accent-1: ${accent_1};
  --accent-2: ${accent_2};
  --accent-3: ${accent_3};
  --bg-active: ${bg_active};
  --bg-added-faint: ${bg_added_faint};
  --bg-added-refine: ${bg_added_refine};
  --bg-added: ${bg_added};
  --bg-alt: ${bg_alt};
  --bg-blue-intense: ${bg_blue_intense};
  --bg-blue-subtle: ${bg_blue_subtle};
  --bg-changed-faint: ${bg_changed_faint};
  --bg-changed-refine: ${bg_changed_refine};
  --bg-changed: ${bg_changed};
  --bg-char-0: ${bg_char_0};
  --bg-char-1: ${bg_char_1};
  --bg-char-2: ${bg_char_2};
  --bg-completion: ${bg_completion};
  --bg-cyan-intense: ${bg_cyan_intense};
  --bg-cyan-subtle: ${bg_cyan_subtle};
  --bg-dim: ${bg_dim};
  --bg-err: ${bg_err};
  --bg-fringe: ${bg_fringe};
  --bg-graph-blue-0: ${bg_graph_blue_0};
  --bg-graph-blue-1: ${bg_graph_blue_1};
  --bg-graph-cyan-0: ${bg_graph_cyan_0};
  --bg-graph-cyan-1: ${bg_graph_cyan_1};
  --bg-graph-green-0: ${bg_graph_green_0};
  --bg-graph-green-1: ${bg_graph_green_1};
  --bg-graph-magenta-0: ${bg_graph_magenta_0};
  --bg-graph-magenta-1: ${bg_graph_magenta_1};
  --bg-graph-red-0: ${bg_graph_red_0};
  --bg-graph-red-1: ${bg_graph_red_1};
  --bg-graph-yellow-0: ${bg_graph_yellow_0};
  --bg-graph-yellow-1: ${bg_graph_yellow_1};
  --bg-green-intense: ${bg_green_intense};
  --bg-green-subtle: ${bg_green_subtle};
  --bg-hl-line: ${bg_hl_line};
  --bg-hover-secondary: ${bg_hover_secondary};
  --bg-hover: ${bg_hover};
  --bg-inactive: ${bg_inactive};
  --bg-info: ${bg_info};
  --bg-magenta-intense: ${bg_magenta_intense};
  --bg-magenta-subtle: ${bg_magenta_subtle};
  --bg-main: ${bg_main};
  --bg-mode-line: ${bg_mode_line};
  --bg-paren: ${bg_paren};
  --bg-red-intense: ${bg_red_intense};
  --bg-red-subtle: ${bg_red_subtle};
  --bg-region: ${bg_region};
  --bg-removed-faint: ${bg_removed_faint};
  --bg-removed-refine: ${bg_removed_refine};
  --bg-removed: ${bg_removed};
  --bg-search-current: ${bg_search_current};
  --bg-search-lazy: ${bg_search_lazy};
  --bg-search-match: ${bg_search_match};
  --bg-search-replace: ${bg_search_replace};
  --bg-search-rx-group-0: ${bg_search_rx_group_0};
  --bg-search-rx-group-1: ${bg_search_rx_group_1};
  --bg-search-rx-group-2: ${bg_search_rx_group_2};
  --bg-search-rx-group-3: ${bg_search_rx_group_3};
  --bg-space-err: ${bg_space_err};
  --bg-space: ${bg_space};
  --bg-tab-bar: ${bg_tab_bar};
  --bg-tab-current: ${bg_tab_current};
  --bg-tab-other: ${bg_tab_other};
  --bg-term-black-bright: ${bg_term_black_bright};
  --bg-term-black: ${bg_term_black};
  --bg-term-blue-bright: ${bg_term_blue_bright};
  --bg-term-blue: ${bg_term_blue};
  --bg-term-cyan-bright: ${bg_term_cyan_bright};
  --bg-term-cyan: ${bg_term_cyan};
  --bg-term-green-bright: ${bg_term_green_bright};
  --bg-term-green: ${bg_term_green};
  --bg-term-magenta-bright: ${bg_term_magenta_bright};
  --bg-term-magenta: ${bg_term_magenta};
  --bg-term-red-bright: ${bg_term_red_bright};
  --bg-term-red: ${bg_term_red};
  --bg-term-white-bright: ${bg_term_white_bright};
  --bg-term-white: ${bg_term_white};
  --bg-term-yellow-bright: ${bg_term_yellow_bright};
  --bg-term-yellow: ${bg_term_yellow};
  --bg-warning: ${bg_warning};
  --bg-yellow-intense: ${bg_yellow_intense};
  --bg-yellow-subtle: ${bg_yellow_subtle};
  --blue-cooler: ${blue_cooler};
  --blue-faint: ${blue_faint};
  --blue-warmer: ${blue_warmer};
  --blue: ${blue};
  --border: ${border};
  --builtin: ${builtin};
  --comment: ${comment};
  --constant: ${constant};
  --cursor: ${cursor};
  --cyan-cooler: ${cyan_cooler};
  --cyan-faint: ${cyan_faint};
  --cyan-warmer: ${cyan_warmer};
  --cyan: ${cyan};
  --date-common: ${date_common};
  --date-deadline-subtle: ${date_deadline_subtle};
  --date-deadline: ${date_deadline};
  --date-event: ${date_event};
  --date-holiday: ${date_holiday};
  --date-now: ${date_now};
  --date-range: ${date_range};
  --date-scheduled-subtle: ${date_scheduled_subtle};
  --date-scheduled: ${date_scheduled};
  --date-weekday: ${date_weekday};
  --date-weekend: ${date_weekend};
  --docstring: ${docstring};
  --err: ${err};
  --fg-added: ${fg_added};
  --fg-alt: ${fg_alt};
  --fg-changed: ${fg_changed};
  --fg-dim: ${fg_dim};
  --fg-fringe: ${fg_fringe};
  --fg-intense: ${fg_intense};
  --fg-main: ${fg_main};
  --fg-mode-line: ${fg_mode_line};
  --fg-region: ${fg_region};
  --fg-removed: ${fg_removed};
  --fg-space: ${fg_space};
  --fg-term-black-bright: ${fg_term_black_bright};
  --fg-term-black: ${fg_term_black};
  --fg-term-blue-bright: ${fg_term_blue_bright};
  --fg-term-blue: ${fg_term_blue};
  --fg-term-cyan-bright: ${fg_term_cyan_bright};
  --fg-term-cyan: ${fg_term_cyan};
  --fg-term-green-bright: ${fg_term_green_bright};
  --fg-term-green: ${fg_term_green};
  --fg-term-magenta-bright: ${fg_term_magenta_bright};
  --fg-term-magenta: ${fg_term_magenta};
  --fg-term-red-bright: ${fg_term_red_bright};
  --fg-term-red: ${fg_term_red};
  --fg-term-white-bright: ${fg_term_white_bright};
  --fg-term-white: ${fg_term_white};
  --fg-term-yellow-bright: ${fg_term_yellow_bright};
  --fg-term-yellow: ${fg_term_yellow};
  --fnname: ${fnname};
  --green-cooler: ${green_cooler};
  --green-faint: ${green_faint};
  --green-warmer: ${green_warmer};
  --green: ${green};
  --identifier: ${identifier};
  --info: ${info};
  --keybind: ${keybind};
  --keyword: ${keyword};
  --link-alt: ${link_alt};
  --link: ${link};
  --magenta-cooler: ${magenta_cooler};
  --magenta-faint: ${magenta_faint};
  --magenta-warmer: ${magenta_warmer};
  --magenta: ${magenta};
  --mail-cite-0: ${mail_cite_0};
  --mail-cite-1: ${mail_cite_1};
  --mail-cite-2: ${mail_cite_2};
  --mail-cite-3: ${mail_cite_3};
  --mail-other: ${mail_other};
  --mail-part: ${mail_part};
  --mail-recipient: ${mail_recipient};
  --mail-subject: ${mail_subject};
  --modeline-err: ${modeline_err};
  --modeline-info: ${modeline_info};
  --modeline-warning: ${modeline_warning};
  --name: ${name};
  --preprocessor: ${preprocessor};
  --prompt: ${prompt};
  --prose-code: ${prose_code};
  --prose-done: ${prose_done};
  --prose-macro: ${prose_macro};
  --prose-metadata-value: ${prose_metadata_value};
  --prose-metadata: ${prose_metadata};
  --prose-table-formula: ${prose_table_formula};
  --prose-table: ${prose_table};
  --prose-tag: ${prose_tag};
  --prose-todo: ${prose_todo};
  --prose-verbatim: ${prose_verbatim};
  --rainbow-0: ${rainbow_0};
  --rainbow-1: ${rainbow_1};
  --rainbow-2: ${rainbow_2};
  --rainbow-3: ${rainbow_3};
  --rainbow-4: ${rainbow_4};
  --rainbow-5: ${rainbow_5};
  --rainbow-6: ${rainbow_6};
  --rainbow-7: ${rainbow_7};
  --rainbow-8: ${rainbow_8};
  --red-cooler: ${red_cooler};
  --red-faint: ${red_faint};
  --red-warmer: ${red_warmer};
  --red: ${red};
  --rx-construct: ${rx_construct};
  --rx-escape: ${rx_escape};
  --string: ${string};
  --type: ${type};
  --underline-err: ${underline_err};
  --underline-info: ${underline_info};
  --underline-warning: ${underline_warning};
  --variable: ${variable};
  --warning: ${warning};
  --yellow-cooler: ${yellow_cooler};
  --yellow-faint: ${yellow_faint};
  --yellow-warmer: ${yellow_warmer};
  --yellow: ${yellow};
  
  /* Variables */
  --lwt-frame: var(--bg-dim) !important;
  --lwt-accent-color: var(--bg-active) !important;
  --lwt-text-color: var(--fg-main) !important;

  --toolbar-field-color: var(--fg-main) !important;

  --toolbar-field-focus-color: var(--fg-main) !important;
  --toolbar-field-focus-background-color: var(--bg-dim) !important;
  --toolbar-field-focus-border-color: var(--border) !important;

  --toolbar-field-background-color: var(--bg-dim) !important;
  --lwt-toolbar-field-highlight: var(--fg-main) !important;
  --lwt-toolbar-field-highlight-text: var(--fg-alt) !important;
  --urlbar-popup-url-color: var(--link-alt) !important;


  /* NOTE: Remove this for 'gentler' background */
  --urlbarView-highlight-background: var(--bg-completion) !important;

  --lwt-tab-text: var(--fg-main) !important;

  --lwt-selected-tab-background-color: var(--bg-tab-current) !important;

  --toolbar-bgcolor: var(--bg-dim) !important;
  --toolbar-color: var(--fg-main) !important;
  --toolbarseparator-color: var(--fg-dim) !important;
  --toolbarbutton-hover-background: var(--bg-hover) !important;
  --toolbarbutton-active-background: var(--bg-hover-secondary) !important;
  --toolbarbutton-icon-fill: var(--fg-dim) !important;
  --toolbarbutton-icon-fill-attenion: var(--warning) !important;
  --toolbarbutton-icon-fill-attenion-text: var(--fg-intense) !important;

  --lwt-sidebar-background-color: var(--lwt-frame) !important;
  --sidebar-background-color: var(--lwt-sidebar-background-color) !important;

  --urlbar-box-bgcolor: var(--bg-dim) !important;
  --urlbar-box-text-color: var(--fg-dim) !important;
  --urlbar-box-hover-bgcolor: var(--bg-active) !important;
  --urlbar-box-hover-text-color: var(--fg-main) !important;
  --urlbar-box-focus-bgcolor: var(--bg-dim) !important;
  

  --background-color-critical: var(--bg-err) !important;
  --background-color-information: var(--bg-blue-subtle) !important;
  --background-color-success: var(--bg-info) !important;
  --background-color-warning: var(--bg-warning) !important;
  
  --button-background-color-destructive: var(--red-faint) !important;
  --button-background-color-destructive-active: var(--red) !important;
  --button-background-color-destructive-disabled: var(--red-cooler) !important;

  --button-background-color-primary: var(--bg-alt) !important;
  --button-background-color-primary-active: var(--rainbow-0) !important;
  
  --icon-color-critical: var(--err) !important;
  --icon-color-information: var(--blue) !important;
  --icon-color-success: var(--info) !important;
  --icon-color-warning: var(--warning) !important;
  --tab-selected-textcolor: var(--fg-main) !important;
  --tab-selected-color-scheme: only ${_style} !important;

  --toolbar-color-scheme: only ${_style} !important;
}

tab.tabbrowser-tab {
  box-sizing: border-box;
  border: 1px solid var(--border);
  box-shadow: 0 0 1px var(--border) !important;
  padding: 0 0 !important;
}

tab.tabbrowser-tab:hover {
  background: var(--bg-active) !important;
}

.titlebar-spacer { display: none !important; }

.tabbrowser-tab .tab-content {
  box-shadow: 0 0 3px var(--border) !important;
  background-color: var(--bg-dim);
  border: 1px solid var(--border);
}

.tab-content:hover {
  background-color: var(--bg-active) !important;
}

.tabbrowser-tab[selected] .tab-content:hover {
  background-color: var(--bg-tab-bar) !important;
}

.tabbrowser-tab[selected] .tab-content {
  background-color: var(--bg-tab-current);
  box-shadow: 0 0 0 1px var(--border)
  border: 1px solid var(--border);
}

#navigator-toolbox:not(:-moz-lwtheme) {
  background: var(--bg-main) !important;
}


#nav-bar {
  box-shadow: 0 0 3px var(--border) !important;
  background: var(--bg-main) !important;
  box-sizing: border-box;
}

.urlbar-input-container {
  border: 1px solid var(--border) !important;
}


/* NOTE: REMOVE IF YOU DISLIKE THE SEARCH BAR HIGHLIGHTING */
.urlbar-tail-prefix {
  color: var(--accent-0) !important;
}

/*
* HACK: This provides a feeling similar to the highlighting from `ef-themes.nvim`
*/
.urlbarView-row:not([type='top_site']):not([type='bookmark']):not([type='autofill_origin']):not([type='history'])
.urlbarView-row-inner
.urlbarView-no-wrap
.urlbarView-title:not(strong) {
  color: var(--accent-0);
  font-weight: bold;
}

.urlbarView-row:is([type='top_site'], [type='bookmark'])
.urlbarView-row-inner
.urlbarView-no-wrap
.urlbarView-title {
  color: var(--fg-main);
  font-weight: normal;
}

.urlbarView-row:not([type='top_site']):not([type='bookmark']):not([type='autofill_origin']):not([type='history'])
.urlbarView-row-inner
.urlbarView-no-wrap
.urlbarView-title strong {
  color: var(--fg-main);
  font-style: normal;
  font-weight: normal;
}

.urlbarView-row:is([type='autofill_origin'], [type='history'])
.urlbarView-row-inner
.urlbarView-no-wrap
.urlbarView-title
strong {
  color: var(--accent-0);
  font-weight: bold;
}

.urlbarView-row:is([type='autofill_origin'], [type='history'])
.urlbarView-row-inner
.urlbarView-no-wrap
.urlbarView-title:not(strong) {
  color: var(--fg-main);
  font-style: normal;
  font-weight: normal;
}
/* NOTE: END SEARCH HIGHLIGHT STYLE */

.urlbarView-url {
  color: var(--link-alt) !important;
}


#urlbar-background { 
  border: transparent !important; 
  background: var(--bg-main) !important;
}

#urlbar-results > .urlbarView-results[type="autofill_origin"] {
  background: var(--bg-alt) !important;
}

.browser-toolbox-background {
  background: var(--bg-dim) !important;
  border: 1px solid var(--border) !important;
}

#PersonalToolbar { 
  background: var(--bg-main) !important; 
}

.urlbarView {
  box-sizing: border-box !important;
  padding: 6px !important;
  border-radius: 8px !important;

  border: 1px solid var(--border) !important;

  font-size: 15px !important;
  line-height: 19.5px !important;

  margin-top: 0 !important;
  margin-bottom: 0 !important;
  caret-color: var(--cursor) !important;
  margin-inline: 0 !important;
  width: inherit !important;
}

.titlebar-spacer { display: none !important; }

#forward-button[disabled='true'] {
  stroke: var(--fg-dim) !important;
  opacity: 0.4 !important;
  fill: var(--fg-dim) !important;
}

#forward-button {
  fill: var(--fg-dim) !important;
}

]]
end

return M

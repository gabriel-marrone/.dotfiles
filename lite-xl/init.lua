-- Root variables
local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local home = os.getenv("HOME") or os.getenv("USERPROFILE")

------------------------------ Themes ----------------------------------------

-- light theme:
--core.reload_module("colors.codeline-light") -- Custom theme made by me

-- dark theme:
core.reload_module("colors.codeline-dark") -- Custom theme made by me

config.borderless = true

config.show_title_bar = false
config.tab_close_button_show = "never"
style.icon_big_font = style.icon_font

style.tab_height = 28

config.smooth_scroll = true
config.animation_rate = 1.0

style.padding.x = 8
style.padding.y = 4

config.tab_width = 4
config.indent_size = 4
config.indent_spaces = true
config.max_line_len = 120

config.trim_whitespace_on_save = true
config.keep_last_line = true

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
-- keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
-- keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------
-- font locations & other variables

-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
local style_font = "/.config/lite-xl/fonts/FiraCodeNerdFontMono-Regular.ttf"
local editor_font = "/.config/lite-xl/fonts/JetBrainsMonoNerdFontMono-Regular.ttf"

local style_size = 15
local editor_size = 14

-- customize fonts:
-- can add {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
style.font = renderer.font.load( home .. style_font, style_size * SCALE, { antialiasing="subpixel" } )
style.code_font = renderer.font.load( home .. editor_font, editor_size * SCALE, { antialiasing="subpixel" } )

------------------------------ Plugins ----------------------------------------
local plugin = config.plugins

plugin.lineguide = {
  enabled = true,
  rulers = { 100 },
  width = 1
}

plugin.treeview = {
  enabled = true,
  size = 240 * SCALE
}

plugin.autofocus = {
  enabled = true
}

plugin.toolbarview = false

---------------------------- Miscellaneous -------------------------------------

-- modify list of files to ignore when indexing the project:
config.ignore_files = {
  -- folders
  "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
  "^node_modules/", "^%.cache/", "^__pycache__/",
  -- files
  "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
  "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
  "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
  "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
}

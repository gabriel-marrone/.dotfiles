-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local home = os.getenv("HOME") or os.getenv("USERPROFILE")

------------------------------ Themes ----------------------------------------

-- light theme:
-- core.reload_module("colors.summer")

core.reload_module("colors.codeline-dark") -- Custom theme made by me

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
style.font = renderer.font.load( home .. style_font, style_size * SCALE, { antialiasing="subpixel", hinting="full" } )
style.code_font = renderer.font.load( home .. editor_font, editor_size * SCALE, { antialiasing="subpixel", hinting="full"} )

------------------------------ Plugins ----------------------------------------
-- MANAGED BY SETTINGS UI
local plugin = config.plugins

-- add plugin settings here if you want
---------------------------- Miscellaneous -------------------------------------

-- modify list of files to ignore when indexing the project:
-- config.ignore_files = {
--   -- folders
--   "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
--   "^node_modules/", "^%.cache/", "^__pycache__/",
--   -- files
--   "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
--   "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
--   "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
--   "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
-- }

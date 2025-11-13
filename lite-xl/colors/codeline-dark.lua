-- Codeline Dark Lite XL Theme
-- Inspired by JetBrains Dark, Monokai Dark, Roblox Studio Lua dark
-- Easy on the eyes, long coding sessions

local style  = require "core.style"
local common = require "core.common"

--------------------------=--------------------------
-- Base Colors
local bg        = "#1E1E1E"  -- main background
local bg2       = "#252526"  -- secondary background
local bg3       = "#2A2A2A"  -- command / popup backgrounds
local text      = "#D4D4D4"  -- default text
local caret     = "#F5F5F5"  -- caret / cursor
local accent    = "#61AFEF"  -- accents / selection borders
local dim       = "#6A6A6A"  -- inactive text
local divider   = "#333333"  -- gutter / separator
local line_num  = "#5A5A5A"  -- line numbers
local line_num2 = "#A0A0A0"  -- line number at caret
local hl_sel    = "#2A2A2A"  -- highlight & selection
local comment_c = "#8B998B"  -- comments
local string_c  = "#C3E88D"  -- strings
local keyword   = "#C792EA"  -- keywords
local keyword2  = "#FFCB6B"  -- secondary keywords
local number_c  = "#F07178"  -- numbers
local operator  = "#89DDFF"  -- operators
local func      = "#82AAFF"  -- functions
local class     = "#F78C6C"  -- classes / types
local attr      = "#FFCB6B"  -- attributes
--------------------------=--------------------------

-- Core UI
style.background      = { common.color(bg) }
style.background2     = { common.color(bg2) }
style.background3     = { common.color(bg3) }
style.text            = { common.color(text) }
style.caret           = { common.color(caret) }
style.accent          = { common.color(accent) }
style.dim             = { common.color(dim) }
style.divider         = { common.color(divider) }
style.selection       = { common.color(hl_sel) }
style.line_number     = { common.color(line_num) }
style.line_number2    = { common.color(line_num2) }
style.line_highlight  = { common.color(hl_sel) }
style.scrollbar       = { common.color(divider) }
style.scrollbar2      = { common.color(line_num2) }

--------------------------=--------------------------
-- Syntax Highlighting
style.syntax["normal"]    = { common.color(text) }
style.syntax["symbol"]    = { common.color(text) }
style.syntax["comment"]   = { common.color(comment_c) }
style.syntax["keyword"]   = { common.color(keyword) }
style.syntax["keyword2"]  = { common.color(keyword2) }
style.syntax["number"]    = { common.color(number_c) }
style.syntax["literal"]   = { common.color(keyword2) }
style.syntax["string"]    = { common.color(string_c) }
style.syntax["operator"]  = { common.color(operator) }
style.syntax["function"]  = { common.color(func) }
style.syntax["class"]     = { common.color(class) }
style.syntax["method"]    = { common.color(func) }
style.syntax["attribute"] = { common.color(attr) }
style.syntax["tag"]       = { common.color(class) }
style.syntax["builtin"]   = { common.color(func) }
style.syntax["link"]      = { common.color(accent) }

--------------------------=--------------------------
-- Tree Sitter / fine-tune overrides
local syncols = {
  ["boolean"]   = { common.color(keyword2) },
  ["parameter"] = { common.color(dim) },
  ["field"]     = { common.color(func) },
  ["constant"]  = { common.color(func) },
  ["declaration"] = { common.color(keyword) },
  ["include"]  = { common.color(keyword) },
  ["preproc"]  = { common.color(keyword) },
  ["storageclass"] = { common.color(keyword) },
  ["repeat"]   = { common.color(keyword) },
  ["character"]= { common.color(string_c) },
}

for i,n in pairs(syncols) do
  style.syntax[i] = n
end

--------------------------=--------------------------
-- Highlight current line disappears on selection
local config = require "core.config"
config.highlight_current_line = "no_selection"

return style

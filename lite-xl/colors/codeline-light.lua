-- Codeline Light (Soft Edition)
-- Gentle, pastel light theme inspired by JetBrains Light + VSCode Light Soft
-- Made to be non-aggressive and comfortable for long coding sessions.

local style  = require "core.style"
local common = require "core.common"

--------------------------=--------------------------
-- Base Colors (low contrast, soft)
local bg        = "#F5F5F7"  -- main background (soft off-white)
local bg2       = "#ECECEC"  -- secondary background
local bg3       = "#E7E7E7"  -- popup background
local text      = "#2C2C2C"  -- dark gray (not pure black)
local caret     = "#A0A0A0"  -- soft gray caret
local accent    = "#4C9EEB"  -- soft blue accent (muted)
local dim       = "#8A8A8A"  -- inactive gray
local divider   = "#D0D0D0"  -- subtle divider
local line_num  = "#B0B0B0"  -- gutter numbers
local line_num2 = "#5E5E5E"  -- active line number
local hl_sel    = "#DCDCDC"  -- gentle highlight/selection
local comment_c = "#A8B0B8"  -- muted blue-gray comments
local string_c  = "#84B97C"  -- soft green
local keyword   = "#B28ADA"  -- pastel purple
local keyword2  = "#C9A96A"  -- muted gold
local number_c  = "#D88080"  -- soft red
local operator  = "#6BB5D9"  -- soft teal/blue
local func      = "#6A9CED"  -- soft bluish
local class     = "#D79A72"  -- pastel orange
local attr      = "#C9A96A"  -- muted gold
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

-- “Barely visible but still somewhat noticeable” line highlight
style.line_highlight  = { common.color("#E5E5E5") }

style.scrollbar       = { common.color("#C8C8C8") }
style.scrollbar2      = { common.color("#A0A0A0") }

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
-- Tree Sitter overrides (softened)
local syncols = {
  ["boolean"]   = { common.color(keyword2) },
  ["parameter"] = { common.color(dim) },
  ["field"]     = { common.color(func) },
  ["constant"]  = { common.color(func) },
  ["declaration"] = { common.color(keyword) },
  ["include"]   = { common.color(keyword) },
  ["preproc"]   = { common.color(keyword) },
  ["storageclass"] = { common.color(keyword) },
  ["repeat"]    = { common.color(keyword) },
  ["character"] = { common.color(string_c) },
}

for i,n in pairs(syncols) do
  style.syntax[i] = n
end

--------------------------=--------------------------
-- Current line highlight disappears on select
local config = require "core.config"
config.highlight_current_line = "no_selection"

return style


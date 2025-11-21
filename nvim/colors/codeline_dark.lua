-- /colors/codeline_dark.lua

local M = {}

-- Base colors
local colors = {
  bg        = "#1E1E1E",
  bg2       = "#252526",
  bg3       = "#2A2A2A",
  text      = "#D4D4D4",
  caret     = "#F5F5F5",
  accent    = "#61AFEF",
  dim       = "#6A6A6A",
  divider   = "#333333",
  line_num  = "#5A5A5A",
  line_num2 = "#A0A0A0",
  hl_sel    = "#2A2A2A",
  comment_c = "#8B998B",
  string_c  = "#C3E88D",
  keyword   = "#C792EA",
  keyword2  = "#FFCB6B",
  number_c  = "#F07178",
  operator  = "#89DDFF",
  func      = "#82AAFF",
  class     = "#F78C6C",
  attr      = "#FFCB6B",
  status_bg = "#252526",
  status_fg = "#D4D4D4",
}

-- Helper to apply highlight groups
local function hi(group, opts)
  local command = "highlight " .. group
  if opts.fg then command = command .. " guifg=" .. opts.fg end
  if opts.bg then command = command .. " guibg=" .. opts.bg end
  if opts.style then command = command .. " gui=" .. opts.style end
  vim.cmd(command)
end

function M.setup()
  -- Editor UI
  vim.cmd("hi Normal guifg="..colors.text.." guibg="..colors.bg)
  vim.cmd("hi Cursor guifg="..colors.bg.." guibg="..colors.caret)
  vim.cmd("hi Visual guibg="..colors.hl_sel)
  vim.cmd("hi LineNr guifg="..colors.line_num.." guibg="..colors.bg)
  vim.cmd("hi CursorLineNr guifg="..colors.line_num2.." guibg="..colors.bg)
  vim.cmd("hi CursorLine guibg="..colors.bg2)
  vim.cmd("hi StatusLine guibg="..colors.status_bg.." guifg="..colors.status_fg.." gui=bold")
  vim.cmd("hi StatusLineNC guibg="..colors.bg.." guifg="..colors.dim)
  vim.cmd("hi VertSplit guifg="..colors.divider.." guibg="..colors.bg)

  -- Treesitter / syntax
  hi("Comment", { fg = colors.comment_c, style = "italic" })
  hi("Constant", { fg = colors.number_c })
  hi("String", { fg = colors.string_c })
  hi("Identifier", { fg = colors.text })
  hi("Function", { fg = colors.func })
  hi("Keyword", { fg = colors.keyword })
  hi("KeywordFunction", { fg = colors.keyword2 })
  hi("Type", { fg = colors.class })
  hi("Conditional", { fg = colors.keyword })
  hi("Repeat", { fg = colors.keyword })
  hi("Operator", { fg = colors.operator })
  hi("PreProc", { fg = colors.attr })
  hi("Include", { fg = colors.keyword })
  hi("Boolean", { fg = colors.keyword2 })
  hi("Number", { fg = colors.number_c })
  hi("Method", { fg = colors.func })
  hi("Structure", { fg = colors.keyword })
  hi("Tag", { fg = colors.class })
  hi("Special", { fg = colors.keyword2 })
  hi("Todo", { fg = colors.keyword2, style = "bold,underline" })
end

M.setup()

return M


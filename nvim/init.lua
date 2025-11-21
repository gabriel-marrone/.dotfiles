-- init.lua

-- Colorscheme
vim.cmd.colorscheme('codeline_dark')

-- Core functions
require("core.keymaps")
require("core.settings")
require("core.functions")
require("core.terminal")

-- Plugin manager
require("config.lazy")

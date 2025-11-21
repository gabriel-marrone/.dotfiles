-- /lua/keymaps.lua

local map_dir = 'keymaps.'
local vig = vim.g

vig.mapleader = ' '
vig.maplocalleader = '\\'

require(map_dir .. 'buffer')	-- buffer keymaps
require(map_dir .. 'command')	-- command-line keymaps
require(map_dir .. 'normal')	-- normal mode keymaps
require(map_dir .. 'general')	-- general keymaps
require(map_dir .. 'insert')	-- insert mode keymaps
require(map_dir .. 'search')	-- search mode keymaps
require(map_dir .. 'tabs')  	-- tab related to keymaps
require(map_dir .. 'visual')    -- visual mode keymaps
require(map_dir .. 'window')	-- window/split related keymaps
require(map_dir .. 'filetree')  -- filetree settings

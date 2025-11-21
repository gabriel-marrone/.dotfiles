-- /lua/keymaps/command.lua

local map = vim.keymap.set

-- Quick Movement
map('c', '<C-a>', '<Home>', { desc = 'Cmd: Go to beginning' })
map('c', '<C-e>', '<End>', { desc = 'Cmd: Go to end' })

-- History Navigation
map('c', '<C-p>', '<Up>', { desc = 'Cmd: Previous history' })
map('c', '<C-n>', '<Down>', { desc = 'Cmd: Next history' })

-- Quick exit
map('c', '<C-c>', '<Esc>', { desc = 'Cmd: Cancel command' })

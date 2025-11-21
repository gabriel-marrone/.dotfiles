-- /lua/keymaps/insert.lua

local map = vim.keymap.set

-- Quick Escape to Normal Mode
map('i', 'jk', '<Esc>', { desc = 'Insert: Escape via jk' })
map('i', 'kj', '<Esc>', { desc = 'Insert: Escape via kj' })

-- Quick Deletion
-- C-u: Delete from cursor to beginning of line
-- C-w: Delete one word backwards
map('i', '<C-u>', '<C-u>', { desc = 'Insert: Delete to start of line' })
map('i', '<C-w>', '<C-w>', { desc = 'Insert: Delete word backwards' })
map('i', '<C-h>', '<Left><Del>', { desc = 'Insert: Delete previous char' })
map('i', '<C-l>', '<Right><Del>', { desc = 'Insert: Delete next char' })

-- Autocompletion / Duplication
map('i', '<C-a>', '<C-y>', { desc = 'Insert: Copy char from line above' })

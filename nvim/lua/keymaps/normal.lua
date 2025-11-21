-- /lua/keymaps/editing.lua

local map = vim.keymap.set

-- Yank/Delete to specific registers
map('n', '<leader>d', '"_d', { desc = 'Editing: Delete to black hole (no yank)' })
map('n', '<leader>y', '"+y', { desc = 'Editing: Yank to system clipboard' })

-- Join lines without cursor jump
map('n', 'J', 'mzJ`z', { desc = 'Editing: Join lines (preserve cursor pos)' })
map('n', '<leader>j', 'J', { desc = 'Editing: Join lines quick' })

-- Quick New Lines (using leader 's' for 'start')
map('n', '<leader>ss', 'o<Esc>', { desc = 'Editing: New line below (start insert)' })
map('n', '<leader>S', 'O<Esc>', { desc = 'Editing: New line above (start insert)' })

-- Commenting 
map('n', '<leader>c', '<Plug>(comment_toggle_linewise_current)', { desc = 'Editing: Toggle comment line' })

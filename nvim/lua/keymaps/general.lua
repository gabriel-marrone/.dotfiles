-- /lua/keymaps/general.lua

local map = vim.keymap.set

-- File Management (Save & Quit)
map('n', '<leader>w', ':write<CR>', { desc = 'General: Save File' })
map('n', '<leader>q', ':quit<CR>', { desc = 'General: Quit Window/Buffer' })
map('n', '<leader>Q', ':qall!<CR>', { desc = 'General: Force Quit All' })


-- Undo / Redo (Universal Editing)
map('n', '<C-z>', 'u', { desc = 'General: Undo (Ctrl-Z)' })
map('n', '<C-r>', '<C-r>', { desc = 'General: Redo (Ctrl-R)' })

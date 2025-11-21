-- /lua/keymaps/window.lua

local map = vim.keymap.set

-- Window/Split Navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Window: Move to Left Window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Window: Move to Right Window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Window: Move to Down Window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Window: Move to Up Window' })

-- 2. Window/Split Creation (Leader prefix: <leader>w)
map('n', '<leader>wv', ':vsplit<CR>', { desc = 'Window: Vertical Split' })
map('n', '<leader>ws', ':split<CR>', { desc = 'Window: Horizontal Split' })
map('n', '<leader>wc', '<C-w>c', { desc = 'Window: Close Current Window' })

-- Resizing (Ctrl prefix)
map('n', '<C-Up>', ':resize +2<CR>', { desc = 'Window: Increase Height' })
map('n', '<C-Down>', ':resize -2<CR>', { desc = 'Window: Decrease Height' })
map('n', '<C-Right>', ':vertical resize -2<CR>', { desc = 'Window: Decrease Width' })
map('n', '<C-Left>', ':vertical resize +2<CR>', { desc = 'Window: Increase Width' })

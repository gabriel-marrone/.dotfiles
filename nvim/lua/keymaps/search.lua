-- /lua/keymaps/search.lua

local map = vim.keymap.set

-- Normal Mode (n) Keymaps

-- Clear Search Highlights
map('n', '<leader>ss', ':nohlsearch<CR>', { desc = 'Search: Clear highlight' })

-- Quick search (optional, if you want a visual cue for * / #)
-- map '*' and '#' to themselves, but with a slight delay if needed.
map('n', '*', '*zz', { desc = 'Search: Forward word under cursor' })
map('n', '#', '#zz', { desc = 'Search: Backward word under cursor' })

-- Plugin-Based Fuzzy Finder/Grep (Assumes Telescope or similar is installed)
map('n', '<leader>sg', ':Telescope live_grep<CR>', { desc = 'Search: Project Grep' })
map('n', '<leader>sf', ':Telescope find_files<CR>', { desc = 'Search: Find Files' })

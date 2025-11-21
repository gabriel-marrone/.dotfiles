-- lua/keymaps/file_tree.lua

local map = vim.keymap.set

-- Normal Mode (n) Keymaps (Prefix: <leader>e)

-- Toggle the File System tree (default view)
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'FileTree: Toggle Neo-tree' })

-- Focus the tree view (if already open, useful when cursor is elsewhere)
map('n', '<leader>E', ':Neotree focus<CR>', { desc = 'FileTree: Focus Neo-tree' })

-- Optional: Show Git Status view
map('n', '<leader>gs', ':Neotree git_status<CR>', { desc = 'FileTree: Git Status View' })

-- Optional: Show Buffers view
map('n', '<leader>bT', ':Neotree buffers<CR>', { desc = 'FileTree: Buffers View' })

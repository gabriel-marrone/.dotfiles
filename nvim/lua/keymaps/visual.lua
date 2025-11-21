-- /lua/keymaps/visual.lua

local map = vim.keymap.set

-- Visual Mode (v, x) Keymaps

-- Indentation (Retain selection after indent/unindent)
map({'v', 'x'}, '>', '>gv', { desc = 'Visual: Indent selection (keep selected)' })
map({'v', 'x'}, '<', '<gv', { desc = 'Visual: Un-indent selection (keep selected)' })

-- Movement of Selection (requires a plugin like 'vim-repeat' or 'vim-move')
map('v', 'K', ':move \'<-2<CR>', { desc = 'Visual: Move selection up' })
map('v', 'J', ':move \'>+1<CR>', { desc = 'Visual: Move selection down' })

-- Paste over selection without yanking the selected text
map({'v', 'x'}, 'P', '"_dP', { desc = 'Visual: Paste without yanking replaced text' })

-- Quick Deletion (using underscore/blackhole register)
map({'v', 'x'}, '_', '"_d', { desc = 'Visual: Delete to blackhole' })

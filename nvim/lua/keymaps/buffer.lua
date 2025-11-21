-- /lua/keymaps/buffer.lua

local map = vim.keymap.set

-- Buffer Mappings
map('n', '<leader>bn', ':bnext<CR>', { desc = 'Buffer: Next' })
map('n', '<leader>bp', ':bprevious<CR>', { desc = 'Buffer: Previous' })
map('n', '<leader>bl', ':ls<CR>', { desc = 'Buffer: List' })

-- Function to close buffer but keep tab if it's the only buffer in tab
local function smart_close_buffer()
  local buffers_in_tab = #vim.fn.tabpagebuflist()
  if buffers_in_tab > 1 then
    vim.cmd('bdelete')
  else
    -- If it's the only buffer in tab, close the tab
    vim.cmd('tabclose')
  end
end
vim.keymap.set('n', '<leader>bc', smart_close_buffer, { desc = 'Smart close buffer/tab' })

-- Switch to the alternate/last used buffer
map('n', '<leader><leader>', '<C-^>', { desc = 'Buffer: Switch to alternate buffer' })

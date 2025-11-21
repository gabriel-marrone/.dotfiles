return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      current_line_blame = true, -- Shows current line blame on the right
      signs = {
        add          = { text = '+' },
        change       = { text = '~' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
      },
      -- Keymaps for gitsigns are often placed in keymaps/git.lua
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- Next/Prev Hunk
        vim.keymap.set({'n', 'v'}, ']h', function() gs.next_hunk() end, { buffer = bufnr, desc = "Git: Next Hunk" })
        vim.keymap.set({'n', 'v'}, '[h', function() gs.prev_hunk() end, { buffer = bufnr, desc = "Git: Prev Hunk" })
      end,
    }
  end,
}
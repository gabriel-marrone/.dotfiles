-- lua/plugins/neo-tree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- For file icons
    'MunifTanjim/nui.nvim',        -- Required UI library
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true, -- Auto-close Neovim if Neo-tree is the last window
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_modified_markers = true,
      window = {
        position = 'left',
        width = 30,
        mapping_options = {
          -- Keys here are for internal navigation within the Neo-tree window
          -- For external toggle, use the keymap below
          -- <CR> (Enter) to open file
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Show dotfiles
          hide_hidden = true,
          hide_dotfiles = true,
          -- You can add patterns here like 'node_modules', '.git', etc.
          always_show = {
            '.gitattributes',
            '.gitignore',
          },
        },
      },
    }
  end,
}

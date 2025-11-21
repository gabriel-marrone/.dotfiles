return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- or 'tabs', your choice
        show_buffer_close_icons = false,
        separator_style = 'thin',

        -- Hide Neo-tree buffer
        custom_filter = function(bufnr)
          local ft = vim.bo[bufnr].filetype
          return ft ~= "neo-tree"
        end,

        offsets = {
          {
            filetype = "neo-tree",
            text = "neo-tree",
            highlight = "Directory",
            text_align = "center",
            separator = true,
          },
        },
      },
    }
  end,
}

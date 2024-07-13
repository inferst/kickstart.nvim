return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
      float = {
        max_width = 120,
        max_height = 30,
      }
    }

    vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
  end,
}

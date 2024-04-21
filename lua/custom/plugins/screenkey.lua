return {
  -- 'NStefan002/screenkey.nvim',
  'inferst/screenkey.nvim',
  version = '*',
  config = function()
    require('screenkey').setup {
      win_opts = {
        relative = 'editor',
        anchor = 'SW',
        width = 20,
      },
      compress_after = 20,
    }

    vim.cmd 'Screenkey'
  end,
}

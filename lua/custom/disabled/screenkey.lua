return {
  'NStefan002/screenkey.nvim',
  lazy = false,
  version = '*',
  opts = {
    win_opts = {
      row = 6,
      col = vim.o.columns - 2,
      relative = 'editor',
      anchor = 'SE',
      width = 29,
      height = 3,
      border = 'single',
      title = '',
      title_pos = 'center',
      style = 'minimal',
      focusable = false,
      noautocmd = true,
    },
    compress_after = 100,
    clear_after = 100,
  },
}

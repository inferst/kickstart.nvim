-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    open_files_do_not_replace_types = { 'trouble', 'qf' }, -- terminal is removed
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dot_files = false,
        never_show = { '.git' },
      },
      window = {
        width = 40,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}

return {
  {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    lazy = false,
    event = { 'BufReadPost', 'BufNewFile', 'VeryLazy' },
    opts = {
      options = {
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { 'dashboard', 'alpha', 'starter' },
        },
        always_divide_middle = true,
        globalstatus = false,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          { 'branch', icon = '' },
          { 'diff', padding = { left = 0, right = 1 } },
          { 'diagnostics', icon = '|', symbols = { error = ' ', warn = ' ', info = ' ' }, padding = { left = 0, right = 1 } },
        },
        lualine_c = {
          { 'filename', path = 1 },
        },
        lualine_x = {},
        lualine_y = { 'progress' },
        lualine_z = {
          { 'location', separator = '' },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    },
  },
}

return {
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        term_colors = true,
      }

      vim.cmd.colorscheme 'catppuccin-frappe'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
  },
  {
    'projekt0n/github-nvim-theme',
    priority = 1000,
  },
  {
    'rose-pine/neovim',
    priority = 1000,
  },
  {
    'shaunsingh/nord.nvim',
    priority = 1000,
  },
}

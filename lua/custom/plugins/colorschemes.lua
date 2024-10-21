return {
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    config = function()
      require('vscode').setup {
        italic_comments = false,
      }
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        term_colors = true,
        no_italic = true,
      }
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      overrides = function()
        return {
          ['@variable.builtin'] = { italic = false },
        }
      end,
    },
  },
  {
    'projekt0n/github-nvim-theme',
    priority = 1000,
  },
  {
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },
      }
    end,
  },
  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
    end,
  },
}

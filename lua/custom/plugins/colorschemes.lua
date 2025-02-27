return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
      overrides = function()
        return {
          ['@variable.builtin'] = { italic = false },
        }
      end,
    },
    init = function()
      vim.cmd.colorscheme 'kanagawa'
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
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        styles = {
          bold = true,
          italic = false,
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
    init = function()
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}

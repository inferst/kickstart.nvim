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
    config = function()
      require('github-theme').setup {
        options = {
          styles = {
            comments = 'NONE',
            functions = 'NONE',
            keywords = 'NONE',
            variables = 'NONE',
            conditionals = 'NONE',
            constants = 'NONE',
            numbers = 'NONE',
            operators = 'NONE',
            strings = 'NONE',
            types = 'NONE',
          },
        },
        groups = {
          all = {
            ['@string.special.url'] = { link = '@string.tsx' },
          },
        },
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
  {
    'scottmckendry/cyberdream.nvim',
    priority = 1000,
    config = function()
      require('cyberdream').setup {
      }
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    config = function()
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    end,
  },
}

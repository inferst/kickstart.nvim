return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = '2.*',
      build = (function()
        -- Build Step is needed for regex support in snippets.
        -- This step is not supported in many windows environments.
        -- Remove the below condition to re-enable on windows.
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      dependencies = {
        {
          'rafamadriz/friendly-snippets',
          config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
          end,
        },
      },
      opts = {},
    },
  },
  opts = {
    keymap = { preset = 'default' },

    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
    },

    cmdline = {
      enabled = false,
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      -- default = { 'lsp', 'path', 'snippets', 'buffer', 'dadbod' },
      -- providers = {
      --   dadbod = { name = 'Dadbod', module = 'vim_dadbod_completion.blink' },
      -- },
    },

    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
      },
    },

    signature = { enabled = true },

    snippets = { preset = 'luasnip' },
  },
}

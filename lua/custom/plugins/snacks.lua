return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- notifier = { enabled = true },
    quickfile = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
    gitbrowse = { enabled = true },
  },
  keys = {
    {
      '<leader>og',
      function()
        Snacks.gitbrowse()
      end,
      desc = '[G]it Browse',
    },
    -- {
    --   '<leader>ot',
    --   function()
    --     Snacks.terminal()
    --   end,
    --   desc = 'Toggle Terminal',
    -- },
    {
      ']]',
      function()
        Snacks.words.jump(vim.v.count1)
      end,
      desc = 'Next Reference',
      mode = { 'n', 't' },
    },
    {
      '[[',
      function()
        Snacks.words.jump(-vim.v.count1)
      end,
      desc = 'Prev Reference',
      mode = { 'n', 't' },
    },
  },
  -- config = function()
  --   local snacks = require('snacks')
  --   vim.keymap.set('n', '<leader>og', snacks.gitbrowse.open, { desc = 'Neo[G]it' })
  -- end,
}

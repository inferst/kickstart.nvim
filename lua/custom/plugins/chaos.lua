return {
  'inferst/nvim-chaos',
  event = 'VimEnter',
  build = './install.sh release',
  -- dir = '/home/inferst/projects/nvim-chaos/',
  config = function(_)
    local plugin = require 'nvim_chaos'
    plugin.setup {
      channel = 'mikerime',
      -- commands = {
      --   messag = '!msg',
      --   colorscheme = '!cs',
      --   hell = '!hell',
      -- },
    }
  end,
}

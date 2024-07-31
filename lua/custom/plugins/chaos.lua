return {
  'inferst/nvim-chaos',
  -- dir = '/home/inferst/projects/nvim-chaos/',
  build = './install.sh release',
  config = function(_)
    local plugin = require 'nvim_chaos'
    plugin.setup {
      channel = 'mikerime',
      -- commands = {
      --   message = '!test',
      --   colorscheme = {
      --     name = '!cs',
      --   },
      --   hell = {
      --     duration = 10 * 11,
      --   },
      -- },
    }
  end,
}

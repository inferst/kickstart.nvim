return {
  'inferst/nvim-chaos',
  dir = '/home/inferst/projects/nvim-chaos/',
  build = './install.sh release',
  config = function(_)
    local plugin = require 'nvim_chaos'
    plugin.setup {
      channel = 'mikerime',
    }
  end,
}

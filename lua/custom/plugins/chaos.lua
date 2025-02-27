return {
  'inferst/nvim-chaos',
  build = './install.sh',
  config = function()
    local chaos = require 'nvim_chaos'
    chaos.setup {
      channel = 'mikerimea',
      commands = {
        message = '!msg',
        colorscheme = {
          name = '!colorscheme',
          duration = 60 * 5,
        },
        hell = {
          name = '!vimhell',
          duration = 60,
        },
      },
    }
  end,
}

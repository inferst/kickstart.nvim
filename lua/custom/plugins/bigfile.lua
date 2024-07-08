-- all fields except `name` and `disable` are optional
local colors = {
  name = "highlight-colors", -- name
  opts = {
    defer = false, -- set to true if `disable` should be called on `BufReadPost` and not `BufReadPre`
  },
  disable = function() -- called to disable the feature
    vim.cmd "HighlightColors Off"
  end,
}

return {
  'LunarVim/bigfile.nvim',
  opts = {
    filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
    pattern = { '*' }, -- autocmd pattern or function see <### Overriding the detection of big files>
    features = { -- features to disable
      'indent_blankline',
      'illuminate',
      'lsp',
      'treesitter',
      'syntax',
      'matchparen',
      'vimopts',
      'filetype',
      colors,
    },
  },
}

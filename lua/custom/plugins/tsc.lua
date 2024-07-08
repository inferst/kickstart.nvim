return {
  'dmmulroy/tsc.nvim',
  opts = {
    auto_open_qflist = true,
    auto_close_qflist = false,
    auto_focus_qflist = false,
    auto_start_watch_mode = false,
    use_trouble_qflist = false,
    use_diagnostics = false,
    run_as_monorepo = true,
    -- bin_path = utils.find_tsc_bin(),
    enable_progress_notifications = true,
    flags = {
      noEmit = true,
      project = 'tsconfig.base.json',
      jsx = 'react-jsx',
      -- project = function()
      -- return utils.find_nearest_tsconfig()
      -- end,
      watch = false,
    },
    hide_progress_notifications_from_history = true,
    spinner = { '⣾', '⣽', '⣻', '⢿', '⡿', '⣟', '⣯', '⣷' },
    pretty_errors = false,
  },
}

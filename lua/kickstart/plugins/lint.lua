return {

  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        codespell = { 'codespell' },
      }

      local filename = vim.fn.stdpath 'config' .. '/' .. '.spellignore'

      local codespell = lint.linters.codespell
      codespell.args = {
        '--stdin-single-line',
        '--ignore-words=' .. filename,
        '-',
      }

      -- To allow other plugins to add linters to require('lint').linters_by_ft,
      -- instead set linters_by_ft like this:
      -- lint.linters_by_ft = lint.linters_by_ft or {}
      -- lint.linters_by_ft['markdown'] = { 'markdownlint' }
      --
      -- However, note that this will enable a set of default linters,
      -- which will cause errors unless these tools are available:
      -- {
      --   clojure = { "clj-kondo" },
      --   dockerfile = { "hadolint" },
      --   inko = { "inko" },
      --   janet = { "janet" },
      --   json = { "jsonlint" },
      --   markdown = { "vale" },
      --   rst = { "vale" },
      --   ruby = { "ruby" },
      --   terraform = { "tflint" },
      --   text = { "vale" }
      -- }
      --
      -- You can disable the default linters by setting their filetypes to nil:
      -- lint.linters_by_ft['clojure'] = nil
      -- lint.linters_by_ft['dockerfile'] = nil
      -- lint.linters_by_ft['inko'] = nil
      -- lint.linters_by_ft['janet'] = nil
      -- lint.linters_by_ft['json'] = nil
      -- lint.linters_by_ft['markdown'] = nil
      -- lint.linters_by_ft['rst'] = nil
      -- lint.linters_by_ft['ruby'] = nil
      -- lint.linters_by_ft['terraform'] = nil
      -- lint.linters_by_ft['text'] = nil

      -- Create autocommand which carries out the actual linting
      -- on the specified events.
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          -- Only run the linter in buffers that you can modify in order to
          -- avoid superfluous noise, notably within the handy LSP pop-ups that
          -- describe the hovered symbol using Markdown.
          if vim.opt_local.modifiable:get() then
            lint.try_lint('codespell', { ignore_errors = true })
            -- lint.try_lint()
          end
        end,
      })

      local codespell_ignore = function()
        local word = vim.fn.expand '<cword>'

        local lines = {}
        local diagnostic = vim.diagnostic.get()

        for _, value in pairs(diagnostic) do
          vim.notify(value['source'], vim.log.levels.INFO)
        end

        local tablelength = function(T)
          local count = 0
          for _ in pairs(T) do
            count = count + 1
          end
          return count
        end

        for line in io.lines(filename) do
          if word == line then
            return
          end

          table.insert(lines, line)
        end

        table.insert(lines, tablelength(lines), word .. '\n')

        local file = io.open(filename, 'w')

        if file then
          for _, line in pairs(lines) do
            file:write(line)
          end

          file:close()
        end

        vim.notify('Added ' .. word .. ' to .spellignore', vim.log.levels.INFO)

        lint.try_lint('codespell', { ignore_errors = true })
      end

      vim.keymap.set('n', '<leader>ci', codespell_ignore, { desc = '[C]ode Spell [I]gnore' })
    end,
  },
}

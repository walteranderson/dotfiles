return {
  'ej-shafran/compile-mode.nvim',
  version = '^5.0.0',
  -- you can just use the latest version:
  -- branch = "latest",
  -- or the most up-to-date updates:
  -- branch = "nightly",
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.g.compile_mode = {
      default_command = '',

      -- if you use something like `nvim-cmp` or `blink.cmp` for completion,
      -- set this to fix tab completion in command mode:
      input_word_completion = true,

      -- to make `:Compile` replace special characters (e.g. `%`) in
      -- the command (and behave more like `:!`), add:
      -- bang_expansion = true,
    }

    vim.keymap.set('n', '<leader>cc', ':Compile<CR>')
    vim.keymap.set('n', '<leader>cq', ':QuickfixErrors<CR>')
    vim.keymap.set('n', '<leader>cn', ':NextError<CR>')
    vim.keymap.set('n', '<leader>cp', ':PrevError<CR>')
  end,
}

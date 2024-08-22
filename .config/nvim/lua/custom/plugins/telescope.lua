return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    local telescope = require 'telescope'
    local builtin = require 'telescope.builtin'
    local set = vim.keymap.set

    telescope.setup {
      defaults = {
        layout_strategy = 'vertical',
      },
    }

    pcall(telescope.load_extension, 'fzf')

    set('n', '<leader>,', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr><cr>', { desc = '[,] Switch Buffer' })
    set('n', '<leader>sf', function()
      builtin.find_files { hidden = true }
    end)
    set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
    set('n', '<leader>sh', function()
      builtin.grep_string { search = 'Handler(' .. vim.fn.expand '<cword>' }
    end)
  end,
}

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    local telescope = require 'telescope'
    local builtin = require 'telescope.builtin'
    local themes = require 'telescope.themes'

    -- Enable telescope fzf native, if installed
    pcall(telescope.load_extension, 'fzf')

    vim.keymap.set('n', '<leader>,', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr><cr>', { desc = '[,] Switch Buffer' })
    vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
  end,
}

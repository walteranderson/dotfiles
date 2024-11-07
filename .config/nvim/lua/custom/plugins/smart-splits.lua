return {
  'mrjones2014/smart-splits.nvim',
  opts = {},
  config = function()
    local smart_splits = require 'smart-splits'
    local set = vim.keymap.set

    -- resizing splits
    set('n', '<A-h>', smart_splits.resize_left)
    set('n', '<S-A-h>', function()
      smart_splits.resize_left(100)
    end)
    set('n', '<A-j>', smart_splits.resize_down)
    set('n', '<S-A-j>', function()
      smart_splits.resize_down(100)
    end)
    set('n', '<A-k>', smart_splits.resize_up)
    set('n', '<S-A-k>', function()
      smart_splits.resize_up(100)
    end)
    set('n', '<A-l>', smart_splits.resize_right)
    set('n', '<S-A-l>', function()
      smart_splits.resize_right(100)
    end)
    set('n', '<A-=>', '<C-w>=<CR>')

    -- moving between splits
    set('n', '<C-h>', smart_splits.move_cursor_left)
    set('n', '<C-j>', smart_splits.move_cursor_down)
    set('n', '<C-k>', smart_splits.move_cursor_up)
    set('n', '<C-l>', smart_splits.move_cursor_right)
    set('n', '<C-\\>', smart_splits.move_cursor_previous)

    -- swapping buffers between windows
    set('n', '<leader><leader>h', smart_splits.swap_buf_left)
    set('n', '<leader><leader>j', smart_splits.swap_buf_down)
    set('n', '<leader><leader>k', smart_splits.swap_buf_up)
    set('n', '<leader><leader>l', smart_splits.swap_buf_right)
  end,
}

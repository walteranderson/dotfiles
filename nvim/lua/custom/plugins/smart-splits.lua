return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local smart_splits = require 'smart-splits'
    local set = vim.keymap.set

    smart_splits.setup()

    -- resizing splits
    set('n', '<A-h>', smart_splits.resize_left)
    set('n', '<A-j>', smart_splits.resize_down)
    set('n', '<A-k>', smart_splits.resize_up)
    set('n', '<A-l>', smart_splits.resize_right)

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

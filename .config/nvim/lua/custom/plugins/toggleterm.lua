return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<leader>t]],
      insert_mappings = false,
    }
  end,
}

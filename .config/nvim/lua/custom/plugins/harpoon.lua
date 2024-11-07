return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local set = vim.keymap.set
    harpoon:setup()

    set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    set('n', '<A-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    set('n', '<A-f>', function()
      harpoon:list():select(1)
    end)
    set('n', '<A-d>', function()
      harpoon:list():select(2)
    end)
    set('n', '<A-s>', function()
      harpoon:list():select(3)
    end)
    set('n', '<A-a>', function()
      harpoon:list():select(4)
    end)
  end,
}

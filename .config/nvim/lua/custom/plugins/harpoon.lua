return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local set = vim.keymap.set
    harpoon:setup()

    set('n', '<A-a>', function()
      harpoon:list():add()
    end)
    set('n', '<A-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    set('n', '<A-1>', function()
      harpoon:list():select(1)
    end)
    set('n', '<A-2>', function()
      harpoon:list():select(2)
    end)
    set('n', '<A-3>', function()
      harpoon:list():select(3)
    end)
    set('n', '<A-4>', function()
      harpoon:list():select(4)
    end)
  end,
}

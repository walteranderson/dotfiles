local ui = require('harpoon.ui')
local mark = require('harpoon.mark')

require("harpoon").setup({
    menu = {
        width = 120
    }
})

vim.keymap.set('n', '<leader>hh', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>ha', mark.add_file)

vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end)

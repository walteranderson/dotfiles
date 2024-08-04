local set = vim.keymap.set

-- keep cursor in the middle while C-d/u
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')

-- keep search term in the middle
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

-- navigate tabs using left/right
set('n', '<left>', 'gT')
set('n', '<right>', 'gt')

-- resizing splits width/height
set('n', '<M-.>', '<c-w>5<')
set('n', '<M-,>', '<c-w>5>')
set('n', '<M-j>', '<C-W>+')
set('n', '<M-m>', '<C-W>-')

-- I don't know if this is a bad idea, but I'm so used to it at this point I don't know if I can go back
set('n', 'H', '^')
set('v', 'H', '^')
set('n', 'L', 'g_')
set('v', 'L', 'g_')

-- stay in visual mode when changing indentation
set('v', '<', '<gv')
set('v', '>', '>gv')

set('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })

-- quickfix navigation --
set('n', '<C-n>', ':cn<CR>')
set('n', '<C-p>', ':cp<CR>')

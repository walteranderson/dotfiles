vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- I don't know if this is a bad idea, but I'm so used to it at this point I don't know if I can go back
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', 'H', '^')
vim.keymap.set('v', 'H', '^')
vim.keymap.set('n', 'L', 'g_')
vim.keymap.set('v', 'L', 'g_')

-- keep cursor in the middle while C-d/u
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep search terms in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- fixing copy buffer problems??
vim.keymap.set('x', '<leader>p', '\'_dP')

-- add to the actual system clipboard for cross-app copy/paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- don't press Q
vim.keymap.set('n', 'Q', '<nop>')

-- movement through splits
vim.keymap.set('n', '<C-j>', '<C-W>j<CR>')
vim.keymap.set('n', '<C-k>', '<C-W>k<CR>')
vim.keymap.set('n', '<C-h>', '<C-W>h<CR>')
vim.keymap.set('n', '<C-l>', '<C-W>l<CR>')

-- stay in visual mode when changing indentation
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')


-- experimental -- 

-- move the text selected in visual mode up and down maintaining indent
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keep cursor where its at with J operator
vim.keymap.set('n', 'J', 'mzJ`z')

-- end experimental --


-- toggle background between light and dark --
vim.keymap.set('n', '<leader>0', ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>', {noremap = true, silent = true})

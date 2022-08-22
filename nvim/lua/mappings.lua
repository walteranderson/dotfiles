local key_remap = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

-- disable arrow keys
key_remap('', '<up>', '<nop>')
key_remap('', '<down>', '<nop>')
key_remap('', '<left>', '<nop>')
key_remap('', '<right>', '<nop>')

-- semi-colon is the same as colon
key_remap('', ';', ':')

-- HJKL to move through the document
key_remap('', 'H', '^')
key_remap('', 'L', 'g_')
key_remap('', 'J', '5j')
key_remap('', 'K', '5k')

-- movement through splits
key_remap('', '<C-j>', '<C-W>j<CR>')
key_remap('', '<C-k>', '<C-W>k<CR>')
key_remap('', '<C-h>', '<C-W>h<CR>')
key_remap('', '<C-l>', '<C-W>l<CR>')

-- pressing return clears highlighted search
key_remap('', '<CR>', ':nohlsearch<CR>/<BS>')

-- stay in visual mode when changing indentation
key_remap('v', '<', '<gv')
key_remap('v', '>', '>gv')

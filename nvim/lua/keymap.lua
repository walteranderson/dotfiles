local keymap = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

-- disable arrow keys
keymap('', '<up>', '<nop>')
keymap('', '<down>', '<nop>')
keymap('', '<left>', '<nop>')
keymap('', '<right>', '<nop>')

-- semi-colon is the same as colon
keymap('', ';', ':')

-- HJKL to move through the document
keymap('', 'H', '^')
keymap('', 'L', 'g_')
keymap('', 'J', '5j')
keymap('', 'K', '5k')

-- movement through splits
keymap('', '<C-j>', '<C-W>j<CR>')
keymap('', '<C-k>', '<C-W>k<CR>')
keymap('', '<C-h>', '<C-W>h<CR>')
keymap('', '<C-l>', '<C-W>l<CR>')

-- pressing return clears highlighted search
keymap('', '<CR>', ':nohlsearch<CR>/<BS>')

-- stay in visual mode when changing indentation
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- leader-enter as an alias to save
keymap('n', '<leader><CR>', ':update<CR>')

-- LSP
keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
keymap('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
keymap('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
keymap('n', 'gk', ':lua vim.lsp.buf.hover()<CR>')
keymap('n', 'ge', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
-- keymap('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
keymap('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- nvim-tree
keymap('', '<leader>m', ':NvimTreeToggle<CR>')
keymap('', '<leader>t', ':NvimTreeFindFile<CR>')

-- telescope
keymap('n', '<leader>f', ':lua require"telescope.builtin".find_files()<CR>')
keymap('n', '<leader>g', ':lua require"telescope.builtin".live_grep()<CR>')
-- keymap('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
keymap('n', '<leader>j', ':lua require"telescope.builtin".buffers({ sort_lastused = true })<CR>')

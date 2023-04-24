-- for setup/inspiration
-- https://bryankegley.me/posts/nvim-getting-started/
-- https://github.com/bkegley/dotfiles

-- general settings
vim.o.syntax = true
vim.o.termguicolors = true
vim.o.errorbells = true
vim.o.smartcase = true
vim.o.showmode = true
vim.wo.wrap = false
vim.o.incsearch = true
vim.o.hidden = true

-- tab width
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true

-- insert mode completion
vim.o.completeopt = 'menuone,noinsert,noselect'

-- line numbers
vim.wo.number = true

-- backup/undo files
vim.o.backup = false
vim.bo.swapfile = false

-- more natural cursor behavior when using splits
vim.o.splitbelow = true
vim.o.splitright = true

-- leader key
vim.g.mapleader = ' '

-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require 'plugins'
require 'keymap'

-- On save, run prettier
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = { '*.ts', '*.js', '*.svelte', '*.md', '*.json' },
--   command = 'silent! Prettier'
-- })

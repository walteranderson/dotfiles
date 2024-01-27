-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- highlighting while searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- have cursor always be a block
-- vim.opt.guicursor = ""

-- lazyvim's root_dir calculation isn't always what I want, so always use cwd as the root_dir
vim.g.root_spec = { "cwd" }

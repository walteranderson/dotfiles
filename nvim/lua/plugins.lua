local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- make sure packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute('packadd packer.nvim')
end

vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
local util = require('packer.util')

packer.init({
  package_root = util.join_paths(fn.stdpath('data'), 'site', 'pack')
})

packer.startup(function()
  local use = use

  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'
  -- use 'jonathanfilip/vim-lucius'
  -- use 'bkegley/gloombuddy'

  use { 'prettier/vim-prettier', run = 'yarn install' }
  end
)

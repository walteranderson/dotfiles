local execute = vim.api.nvim_command
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  print('Installing packer, close and reopen Neovim')
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  }
})

return packer.startup(function(use)
  -- let packer manage itself
  use 'wbthomason/packer.nvim'

  -- color schemes
  use 'navarasu/onedark.nvim'
  use 'sheerun/vim-polyglot'
  -- use 'EdenEast/nightfox.nvim'
  -- use {
  --   'catppuccin/nvim',
  --   as = 'catppuccin',
  --   config = function()
  --     vim.g.catppuccin_flavour = 'mocha' -- latte, frappe, macchiato, mocha
  --     require('catppuccin').setup()
  --     vim.api.nvim_command "colorscheme catppuccin"
  --   end
  -- }

  -- syntax highlighting and LSP support
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'anott03/nvim-lspinstall'

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- fuzzy finder
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'

  -- the legendary tpope
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  -- tmux integration
  use 'christoomey/vim-tmux-navigator'

  use {'prettier/vim-prettier', run = 'yarn install' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

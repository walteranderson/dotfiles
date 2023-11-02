-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- tmux navigator
  use('christoomey/vim-tmux-navigator')

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- harpoon
  use 'ThePrimeagen/harpoon'

  -- color scheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('EdenEast/nightfox.nvim')

  -- the great tpope
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('tpope/vim-commentary')

  -- making comments work with svelte
  use('JoosepAlviste/nvim-ts-context-commentstring')

  -- git gutter
  use('airblade/vim-gitgutter')

  -- easier comments
  -- use('tomtom/tcomment_vim')

  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- Github Copilot
  use 'github/copilot.vim'

  -- matching html tags
  use 'leafOfTree/vim-matchtag'
end)

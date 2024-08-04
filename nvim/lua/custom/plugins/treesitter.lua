return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = {
        'javascript',
        'typescript',
        'svelte',
        'css',
        'html',
        'query',
        'scss', -- scss also highlights postcss code
        'go',
        'lua',
        'python',
        'tsx',
        'vimdoc',
        'vim',
        'bash',
      },
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}

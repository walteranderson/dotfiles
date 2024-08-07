return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line
    require('nvim-treesitter.configs').setup {
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

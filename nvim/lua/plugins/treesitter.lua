local configs = require'nvim-treesitter.configs'

configs.setup {
  ensure_installed = {
      'bash',
      'css',
      'dockerfile',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'lua',
      'make',
      'markdown',
      'scss',
      'svelte',
      'typescript',
      'vim',
      'yaml',
      'python',
  },
  highlight = {
    enable = true,
  }
}

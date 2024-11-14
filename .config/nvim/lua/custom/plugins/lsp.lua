return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    { 'folke/neodev.nvim', opts = {} },
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup()
    require('neodev').setup()

    local servers = {
      gopls = {},
      -- html = { filetypes = { 'html', 'twig', 'hbs'} },
      ts_ls = {},
      eslint = {},
      ocamllsp = {},
      svelte = {
        emmet = {
          showExpandedAbbreviation = 'never',
        },
      },
      -- JSON/YAML linter
      -- https://github.com/luizcorreia/spectral-language-server
      spectral = {},
      lua_ls = {},
      clojure_lsp = {},
    }

    local lspconfig = require 'lspconfig'

    local capabilities = nil
    if pcall(require, 'cmp_nvim_lsp') then
      capabilities = require('cmp_nvim_lsp').default_capabilities()
    end

    local mason_lspconfig = require 'mason-lspconfig'
    mason_lspconfig.setup {
      -- ensure_installed = vim.tbl_keys(servers),
    }

    for name, config in pairs(servers) do
      config = vim.tbl_deep_extend('force', {}, {
        capabilities = capabilities,
      }, config)

      lspconfig[name].setup(config)
    end

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function()
        local set = vim.keymap.set
        set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })
        set('n', '<leader>cr', vim.lsp.buf.rename, { buffer = 0 })
        set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        set('n', '<leader>dl', '<cmd>Telescope diagnostic<cr>', { buffer = 0 })
        set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
        set('n', '<leader>e', vim.diagnostic.open_float, { buffer = 0 })
      end,
    })
  end,
}

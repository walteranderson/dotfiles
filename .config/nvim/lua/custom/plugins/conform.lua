return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'prettier' },
      svelte = { 'prettier' },
      go = { 'gopls' },
      ocaml = { 'ocamlformat' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}

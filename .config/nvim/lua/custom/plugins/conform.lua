return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'prettier' },
      svelte = { 'prettier' },
      go = { 'gopls' },
      ocaml = { 'ocamlformat' },
      clojure = { 'cljfmt' },
    },
    format_on_save = {
      timeout_ms = 5000,
      lsp_format = 'fallback',
    },
  },
}

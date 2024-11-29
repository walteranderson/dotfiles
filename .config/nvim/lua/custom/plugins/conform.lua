return {
  'stevearc/conform.nvim',
  opts = {
    formatters = {
      prettier = {
        require_cwd = true,
      },
      biome = {
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'biome' },
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

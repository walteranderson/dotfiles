return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
    keys = {
    {
      "<leader>ff",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback"
    }
  }
}

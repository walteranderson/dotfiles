return {
  'stevearc/conform.nvim',
  -- keys = {
  --   {
  --     "<leader>ff",
  --     function()
  --       require("conform").format({ async = true, lsp_format = "fallback" })
  --     end,
  --     mode = "",
  --     desc = "Format buffer",
  --   },
  -- },
  opts = {
    formatters_by_ft = {
      typescript = { "prettier" },
      svelte = { "prettier" }
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback"
    }
  }
}

local lspconfig = require'lspconfig'
local completion = require'completion'


local function custom_on_attach(client)
  print('Attaching to ' .. client.name)
  completion.on_attach(client)
end

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     underline = true,
--     virtual_text = false,
--     signs = true,
--     update_in_insert = true,
--   }
-- )

-- local default_config = {
--   on_attach = custom_on_attach
-- }

lspconfig.tsserver.setup { on_attach = custom_on_attach }
lspconfig.svelte.setup { on_attach = custom_on_attach }

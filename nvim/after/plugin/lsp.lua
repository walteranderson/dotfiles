local nvim_lsp = require('lspconfig')
local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  if nvim_lsp.util.root_pattern("deno.json", "import_map.json")(vim.fn.getcwd()) then
    if client.name == "tsserver" then
      client.stop()
      return
    end
  end
end)

lsp.format_on_save({
  format_opts = {
    timeout_ms = 10000,
  },
  servers = {
    ['null-ls'] = { 'javascript', 'typescript', 'lua', 'svelte' }
  }
})

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'svelte'
})

lsp.configure('denols', {
  root_dir = nvim_lsp.util.root_pattern("deno.json", "import_map.json"),
})

cmp.setup({
  preselect = cmp.PreselectMode.None,
  sources = {
    { name = "copilot" },
    { name = "nvim_lsp" },
  },
  enabled = function()
    -- disable completion in comments
    local context = require 'cmp.config.context'

    -- keep command mode completion enabled when cursor is in a comment
    if vim.api.nvim_get_mode().mode == 'c' then
      return true
    else
      return not context.in_treesitter_capture('comment')
          and not context.in_syntax_group('Comment')
    end
  end,
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete()
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local null_ls = require('null-ls')
local prettier = require('prettier')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      extra_filetypes = { 'svelte' }
    })
  }
})

prettier.setup()

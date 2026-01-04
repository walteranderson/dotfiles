return {
  -- Main LSP Configuration
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs and related tools to stdpath for Neovim
    -- Mason must be loaded before its dependents so we need to set it up here.
    -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',

    -- Useful status updates for LSP.
    { 'j-hui/fidget.nvim', opts = {} },

    -- Allows extra capabilities provided by blink.cmp
    'saghen/blink.cmp',
  },
  config = function()
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

        -- local map = function(keys, func, desc, mode)
        --   mode = mode or 'n'
        --   vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        -- end
        --
        -- map('K', vim.lsp.buf.hover, 'Hover [K]')
        -- map('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        -- map('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
        -- map('<leader>cr', vim.lsp.buf.rename, '[C]hange [R]ename')
        -- map('<leader>dj', vim.diagnostic.goto_next, '[D]iagnostic [N]ext')
        -- map('<leader>dk', vim.diagnostic.goto_prev, '[D]iagnostic [K]prev')
        -- map('<leader>dl', '<cmd>Telescope diagnostic<cr>', '[D]iagnostic [T]elescope')
        -- map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        -- map('<leader>e', vim.diagnostic.open_float, '[E] for floating diagnostic')
      end,
    })

    -- Diagnostic Config
    -- See :help vim.diagnostic.Opts
    vim.diagnostic.config {
      severity_sort = true,
      float = { border = 'rounded', source = 'if_many' },
      underline = { severity = vim.diagnostic.severity.ERROR },
      signs = vim.g.have_nerd_font and {
        text = {
          [vim.diagnostic.severity.ERROR] = '󰅚 ',
          [vim.diagnostic.severity.WARN] = '󰀪 ',
          [vim.diagnostic.severity.INFO] = '󰋽 ',
          [vim.diagnostic.severity.HINT] = '󰌶 ',
        },
      } or {},
      virtual_text = {
        source = 'if_many',
        spacing = 2,
        format = function(diagnostic)
          local diagnostic_message = {
            [vim.diagnostic.severity.ERROR] = diagnostic.message,
            [vim.diagnostic.severity.WARN] = diagnostic.message,
            [vim.diagnostic.severity.INFO] = diagnostic.message,
            [vim.diagnostic.severity.HINT] = diagnostic.message,
          }
          return diagnostic_message[diagnostic.severity]
        end,
      },
    }

    local servers = {
      gopls = {},
      -- html = { filetypes = { 'html', 'twig', 'hbs'} },
      ts_ls = {},
      -- eslint = {},
      -- ocamllsp = {},
      svelte = {
        emmet = {
          showExpandedAbbreviation = 'never',
        },
      },
      -- JSON/YAML linter
      -- https://github.com/luizcorreia/spectral-language-server
      spectral = {},
      clojure_lsp = {},
      biome = {},
      ols = {},
      clangd = {},
      lua_ls = {
        -- cmd = { ... },
        -- filetypes = { ... },
        -- capabilities = {},
        settings = {
          Lua = {
            completion = {
              callSnippet = 'Replace',
            },
            -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            diagnostics = {
              globals = { 'vim' },
              disable = { 'missing-fields' },
            },
          },
        },
      },
    }

    require('mason-lspconfig').setup {
      automatic_enable = vim.tbl_keys(servers or {}),
    }

    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, {
      'stylua', -- Used to format Lua code
    })
    require('mason-tool-installer').setup { ensure_installed = ensure_installed }

    -- Installed LSPs are configured and enabled automatically with mason-lspconfig
    -- The loop below is for overriding the default configuration of LSPs with the ones in the servers table
    for server_name, config in pairs(servers) do
      vim.lsp.config(server_name, config)
    end
  end,
}

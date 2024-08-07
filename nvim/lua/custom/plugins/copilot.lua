return {
  -- Main Copilot integration
  {
    'zbirenbaum/copilot.lua',
    enabled = false,
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },

  -- Add Copilot to completion
  {
    'zbirenbaum/copilot-cmp',
    enabled = false,
    after = { 'copilot.lua' },
    config = function()
      require('copilot_cmp').setup()
    end,
  },

  -- Copilot Chat integration
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    enabled = false,
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    opts = {
      debug = false,
    },
    keys = {
      {
        '<leader>cc',
        '<cmd>CopilotChatToggle<cr>',
        desc = '[C]opilot [C]hat',
      },
    },
  },
}

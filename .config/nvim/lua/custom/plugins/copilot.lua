local enabled = false

return {
  -- Main Copilot integration
  {
    'zbirenbaum/copilot.lua',
    enabled = enabled,
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
    enabled = enabled,
    after = { 'copilot.lua' },
    config = function()
      require('copilot_cmp').setup()
    end,
  },

  -- Copilot Chat integration
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    enabled = enabled,
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

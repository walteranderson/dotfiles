return {
  {
    'tpope/vim-fugitive',
    keys = {
      {
        '<C-g>',
        function()
          for winnr = 1, vim.fn.winnr '$' do
            if vim.fn.getwinvar(winnr, 'fugitive_status') ~= '' then
              vim.cmd(winnr .. 'close')
            else
              vim.cmd 'Git'
            end
          end
        end,
        desc = '[G]it [S]tatus',
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'nvim-mini/mini.pick', -- optional
      'folke/snacks.nvim', -- optional
    },
  },
}

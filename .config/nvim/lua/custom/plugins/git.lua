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
}

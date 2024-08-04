local COLOR = 'nordfox'

return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme(COLOR)
  end,
  keys = {
    {
      '<leader>tc',
      function()
        if COLOR == 'nordfox' then
          COLOR = 'dawnfox'
        else
          COLOR = 'nordfox'
        end

        vim.cmd.colorscheme(COLOR)
      end,
    },
  },
}

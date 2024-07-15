local COLOR = 'nordfox'

return {
  'EdenEast/nightfox.nvim',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  keys = {
    {
      "<leader>tc",
      function()
        if COLOR == 'nordfox' then
          COLOR = 'dawnfox'
        else
          COLOR = 'nordfox'
        end

        vim.cmd.colorscheme(COLOR)
      end,
      desc = "[T]oggle [C]olorscheme",
    },
  },
  config = function()
    vim.cmd.colorscheme(COLOR)
  end
}

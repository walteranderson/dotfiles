return {
  'echasnovski/mini.files',
  opts = {
    mappings = {
      go_in = 'L',
      go_in_plus = 'l',
    }
  },
  keys = {
    {
      "<leader>fm",
      function()
        require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>fM",
      function()
        require("mini.files").open(vim.loop.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
  }
}

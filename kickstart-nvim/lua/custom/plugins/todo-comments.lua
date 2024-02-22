return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "<leader>tq",
      "<cmd>TodoQuickFix<cr>",
      desc = "[T]odo [Q]uickFix"
    },
    {
      "<leader>tn",
      function()
        require('todo-comments').jump_next()
      end,
      desc = "[T]odo [N]ext"
    },
    {
      "<leader>tp",
      function()
        require('todo-comments').jump_prev()
      end,
      desc = "[T]odo [N]ext"
    },
  }
}

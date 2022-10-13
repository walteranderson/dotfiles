require('nvim-tree').setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "p", action = "parent_node" },
        { key = "P", action = "paste" },
      },
    },
  },
  git = {
    ignore = false
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

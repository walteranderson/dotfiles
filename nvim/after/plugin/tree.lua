local nvim_tree = require('nvim-tree')
local api = require('nvim-tree.api')

nvim_tree.setup({
  view = {
    adaptive_size = true,
  },
  -- mappings = {
  --   list = {
  --     { key = "p", action = "parent_node" },
  --     { key = "P", action = "paste" },
  --   },
  -- },
  git = {
    ignore = false
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

vim.keymap.set('n', '<leader>m', api.tree.toggle, {})
vim.keymap.set('n', '<leader>t', ':NvimTreeFindFile!<CR>', {})

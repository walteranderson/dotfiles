return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.preselect = cmp.PreselectMode.None
    opts.completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    }
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      -- `Enter` key to confirm completion
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
    })

    opts.experimental.ghost_text = false
  end,
}

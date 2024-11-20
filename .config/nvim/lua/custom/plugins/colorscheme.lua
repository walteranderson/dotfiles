-- local COLOR = 'nordfox'

return {
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
      }
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },

  -- {
  --   'EdenEast/nightfox.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- 3 Shades: base, bright, dim
  --     -- Available colors:
  --     --   black, red, green, yellow, blue,
  --     --   magenta, cyan, white, orange, pink
  --
  --     require('nightfox').setup {
  --       options = {
  --         transparent = true,
  --       },
  --       palettes = {
  --         nordfox = {
  --           white = '#bababa',
  --           -- cyan = { base = '#ff0000', bright = '#00ff00', dim = '#0000ff' },
  --         },
  --       },
  --       specs = {
  --         nordfox = {
  --           syntax = {
  --             builtin1 = 'white.dim',
  --             -- type = 'yellow.dim',
  --           },
  --         },
  --       },
  --     }
  --     vim.cmd.colorscheme(COLOR)
  --
  --     -- local spec = require('nightfox.spec').load 'nordfox'
  --     -- print(vim.inspect(spec))
  --   end,
  --   keys = {
  --     {
  --       '<leader>tc',
  --       function()
  --         if COLOR == 'nordfox' then
  --           COLOR = 'dawnfox'
  --         else
  --           COLOR = 'nordfox'
  --         end
  --
  --         vim.cmd.colorscheme(COLOR)
  --       end,
  --     },
  --   },
  -- },
}

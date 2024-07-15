return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      hide = {
        statusline = false,
      },
      config = {
        week_header = { enable = true },
        shortcut = {
          {
            icon = "󰒲  ",
            desc = "Update ",
            group = 'Directory',
            action = "Lazy",
            key = "u",
          },
          {
            icon = "   ",
            desc = "Files ",
            group = 'Label',
            action = "Telescope find_files",
            key = "f",
          },
          {
            icon = "   ",
            desc = "Grep ",
            group = 'DiagnosticHint',
            action = "Telescope live_grep",
            key = "g",
          },
          {
            icon = "   ",
            desc = "Quit ",
            group = 'WarningMsg',
            action = "qall!",
            key = "q",
          },
        },
        project = { enable = false },
        footer = {}
      }
    }
  end,
}

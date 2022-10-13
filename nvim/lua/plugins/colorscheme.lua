vim.cmd [[
try
  colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

local onedark = require('onedark')
onedark.setup {
    style = 'warmer',
    toggle_style_key = '<leader>cs',
    toggle_style_list = {'warmer', 'light'}
}
onedark.load()

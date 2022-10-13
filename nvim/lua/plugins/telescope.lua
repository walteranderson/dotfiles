local telescope = require 'telescope'

telescope.setup {
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0 
    }
  }
}

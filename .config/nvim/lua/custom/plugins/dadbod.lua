vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_use_postgres_views = 0

-- this is something NEOVIM adds... Why the fuck would you add keybinds to ctrl-c?????
vim.g.omni_sql_no_default_maps = 1

return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-completion',
  'kristijanhusak/vim-dadbod-ui',
}

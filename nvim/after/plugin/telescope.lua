local builtin = require('telescope.builtin')
local actions = require "telescope.actions"

local setup = require('telescope').setup
setup({
    defaults = {
        layout_config = {
            preview_width = 0
        },
        mappings = {
            i = {
                -- WHY DOESN'T <C-p> <C-n> WORK?!?!?
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

            }
        }
    },
    pickers = {
        buffers = { sort_lastused = true }
    }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>j', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep >") })
end)

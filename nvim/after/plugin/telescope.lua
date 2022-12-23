local telescope = require("telescope")
local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    }
})

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- git file search
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- project search
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

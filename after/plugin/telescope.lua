local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({
        search = vim.fn.input("Grep > "),
        hidden = true,
    })
end)

require("telescope").setup{
    defaults = {
        find_files = {
            hidden = true
        },
        file_ignore_patterns = {
            "node_modules", 
            "yarn.lock",
            "package.lock"
        }
    }
}

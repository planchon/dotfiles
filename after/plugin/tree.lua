-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = 60
local height = 20

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = width, 
        height = height,
        number = true,
        relativenumber = true,
        float = {
            enable = true,
            open_win_config = {
                relative = "editor",
                width = width,
                height = height,
                row = (gheight - height) * 0.5,
                col = (gwidth - width) * 0.5,
            },
        },
    },
    renderer = {
        group_empty = true,
    },
})


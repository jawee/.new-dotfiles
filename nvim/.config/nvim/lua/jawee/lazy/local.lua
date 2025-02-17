local local_plugins = {
    {
        "jawee/azuredo.nvim",
        -- dir = "~/projects/azuredo.nvim",
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'j-hui/fidget.nvim',
        },
        config = function()
            require("azuredo").setup({ project = 'jawee', debug = false, telescope = true, fidget = true })
            vim.keymap.set("n", "<leader>az", "<cmd>Azuredo<CR>")
        end,
    },
    {
        "jawee/tmuxcmd.nvim",
        -- dir = "~/projects/tmuxcmd.nvim",
        config = function()
            require("tmuxcmd").setup({})
            vim.keymap.set("n", "<leader>tm", "<cmd>Tmuxcmd<CR>")
        end,
    }
}

return local_plugins

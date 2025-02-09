local local_plugins = {
    {
        "jawee/azuredo.nvim",
        -- dir = "~/projects/azuredo.nvim",
        config = function()
        require("azuredo").setup({ project = 'jawee', debug = false, telescope = true, fidget = true })
            vim.keymap.set("n", "<leader>az", "<cmd>Azuredo<CR>")
        end,
    }
}

return local_plugins

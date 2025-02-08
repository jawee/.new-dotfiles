local local_plugins = {
    {
        "jawee/azuredo.nvim",
        config = function()
            require("azuredo").setup()
            vim.keymap.set("n", "<leader>az", "<cmd>Azuredo<CR>")
        end,
        -- "azuredo.nvim",
        -- dir = "~/projects/azuredo.nvim",
        -- config = function()
        --     require("azuredo").setup()
        --     -- vim.keymap.set("n", "<leader>ct", "<cmd>CockpitTest<CR>")
        --     -- vim.keymap.set("n", "<leader>cr", "<cmd>CockpitRefresh<CR>")
        --     vim.keymap.set("n", "<leader>az", "<cmd>Azuredo<CR>")
        -- end,
    }
}

return local_plugins

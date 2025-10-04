local local_plugins = {
    {
        "jawee/azuredo.nvim",
        -- dir = "~/personal/azuredo.nvim",
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'j-hui/fidget.nvim',
        },
        config = function()
            require("azuredo").setup({ project = 'EastCoast', debug = false, telescope = true, fidget = true })
            vim.keymap.set("n", "<leader>az", "<cmd>Azuredo<CR>")
        end,
    },
    {
        "jawee/tmuxcmd.nvim",
        dir = "~/personal/tmuxcmd.nvim",
        config = function()
            require("tmuxcmd").setup({})
            vim.keymap.set("n", "<leader>tm", "<cmd>Tmuxcmd<CR>")
        end,
    },
    {
      "jawee/nuggets.nvim",
      dependencies = {
        "j-hui/fidget.nvim",
      },
      config = function()
        require("nuggets").setup({})
        vim.keymap.set("n", "<leader>nu", "<cmd>Nuggets<CR>")
      end,
    }
}

return local_plugins

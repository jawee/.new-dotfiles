require("jawee.set")
require("jawee.remap")
require("jawee.terminal")
require("jawee.init_lazy")
require("jawee.custom")

vim.api.nvim_create_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

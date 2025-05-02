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

vim.api.nvim_create_autocmd('BufReadPre', {
    pattern = '*.mjml',
    callback = function()
        vim.bo.filetype = 'html'
    end,
})

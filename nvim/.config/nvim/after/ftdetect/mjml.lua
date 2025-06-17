vim.api.nvim_create_autocmd('BufReadPre', {
    pattern = '*.mjml',
    callback = function()
        vim.bo.filetype = 'html'
    end,
})

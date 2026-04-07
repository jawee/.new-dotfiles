vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*.bicepparam',
  callback = function()
    print('Setting filetype to bicep-params for *.bicepparam files')
    vim.cmd("set filetype=bicep-params")
  end,
})

vim.filetype.add({
  pattern = {
    ['*.bicepparam'] = 'bicep-params',
  },
})

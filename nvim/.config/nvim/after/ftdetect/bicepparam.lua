vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = "*.bicepparam",
  callback = function()
    -- vim.bo.filetype = "bicepparam"
    vim.cmd("set filetype=bicep-params")
    vim.cmd("silent! LspRestart")
  end,
})

vim.filetype.add({
  pattern = {
    ["*.bicepparam"] = "bicep-params",
  },
})

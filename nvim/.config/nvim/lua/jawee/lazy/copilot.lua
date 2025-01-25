return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.keymap.set('i', '<C-s>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = "#83a598" })
    vim.api.nvim_set_hl(0, "CopilotAnnotation", { fg = "#83a598" })
  end
}

function SetColors(color)
  vim.o.background = "dark"
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)
end

function SetLight()
  vim.o.background = "light"
  vim.cmd.colorscheme("rose-pine-dawn")
end

return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
      require('tokyonight').setup({
        style = "storm",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "dark",
          floats = "dark",
        },
      })
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({
        dim_inactive = true,
        transparent_mode = true,
        contrast = "hard",
        transparent = false,
        terminal_colors = false,
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = false,
        },
      })
      SetColors("rose-pine-moon")
    end
  }
}

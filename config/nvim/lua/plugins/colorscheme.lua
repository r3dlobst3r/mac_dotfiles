-- vim.g.material_style = "deep ocean"
-- vim.g.material_style = "oceanic"
vim.g.material_style = "palenight"
-- vim.g.material_style = "lighter"
-- vim.g.material_style = "darker"

return {
  { "ellisonleao/gruvbox.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "marko-cerovac/material.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = true,
        leap = true,
        dashboard = true,
        mason = true,
        noice = true,
        which_key = true,
      },
    },
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "dark",
        floats = "transparent",
      },
      on_highlights = function(highlights, _)
        highlights.LineNr = { fg = "#bbbbbb" }
        -- highlights.ColorColumn = { bg = "#BBBBBF" }
      end,
    },
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

-- vim.g.material_style = "deep ocean"
-- vim.g.material_style = "oceanic"
vim.g.material_style = "palenight"
-- vim.g.material_style = "lighter"
-- vim.g.material_style = "darker"

return {
  { "ellisonleao/gruvbox.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "marko-cerovac/material.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}

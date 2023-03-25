return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "dark",
      floats = "transparent",
    },
    on_highlights = function (highlights, colors)
      highlights.LineNr = { fg = "#bbbbbb" }
    end
  },
}

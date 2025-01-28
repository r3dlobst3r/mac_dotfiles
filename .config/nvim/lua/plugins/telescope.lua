return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    return {
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "-i", "--color", "never", "-g", "!.git" },
          hidden = true,
        },
        grep_string = {
          additional_args = {
            "--hidden",
            "--glob",
            "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock}",
          },
        },
        live_grep = {
          additional_args = {
            "--hidden",
            "--glob",
            "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock}",
          },
        },
      },
    }
  end,
}

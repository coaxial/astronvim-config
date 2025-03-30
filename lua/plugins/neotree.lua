return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false, -- This shows hidden files
          hide_dotfiles = false, -- Don't hide dotfiles
          hide_gitignored = true, -- Do hide gitignored files
          hide_by_name = {
            ".git", -- Only hide the .git directory
          },
        },
      },
    },
  },
}

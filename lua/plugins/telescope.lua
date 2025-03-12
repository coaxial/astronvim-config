return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        find_files = {
          file_ignore_patterns = {},
          hidden = true,
          respect_gitignore = true,
        },
        live_grep = {
          additional_args = function() return { "--hidden" } end,
        },
      },
    },
  },
}

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "schtibe/taxi.vim",
    ft = "taxi",
  },
  -- "nelsyeung/twig.vim",
  "lumiliet/vim-twig",
  {
    "heavenshell/vim-jsdoc",
    build = "make install",
    ft = { "javascript", "typescript", "javascript.jsx" },
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
}

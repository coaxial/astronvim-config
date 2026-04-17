-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- == Examples of Adding Plugins ==
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        -- Fixes cursor always moving one char short of the end of the line
        -- and blinking function signature/JSDoc help popup
        cursorhold_update = false,
      }
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },
  {
    "joshuavial/aider.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      auto_manage_context = true,
      default_bindings = true,
      debug = false,
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  { "Mofiqul/dracula.nvim" },

  {
    "nvimtools/none-ls.nvim",
    opts = {
      temp_dir = vim.fn.stdpath "cache" .. "/null-ls",
    },
    config = function(_, opts)
      -- Ensure the temp directory exists
      local temp_dir = opts.temp_dir or vim.fn.stdpath "cache" .. "/null-ls"
      vim.fn.mkdir(temp_dir, "p")

      require("null-ls").setup(opts)
    end,
  },
  {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        -- Use tabs for indenting Makefiles
        makefile_tabs = {
          {
            event = "FileType",
            pattern = "make",
            callback = function()
              vim.opt_local.expandtab = false
              vim.opt_local.tabstop = 4
              vim.opt_local.shiftwidth = 4
              vim.opt_local.softtabstop = 0
            end,
          },
        },
      },
    },
  },
}

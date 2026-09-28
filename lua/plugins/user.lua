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
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
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
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  { "Mofiqul/dracula.nvim" },

  {
    "nanotee/sqls.nvim",
    dependencies = {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        if opts.autocmds then opts.autocmds.sqls_attach = nil end
        return opts
      end,
    },
  },

  {
    "nickjvandyke/opencode.nvim",
    version = "*", -- Latest stable release
    dependencies = {
      {
        -- `snacks.nvim` integration is recommended, but optional
        ---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
        "folke/snacks.nvim",
        optional = true,
        opts = {
          input = {}, -- Enhances `ask()`
          picker = { -- Enhances `select()`
            actions = {
              opencode_send = function(...) return require("opencode").snacks_picker_send(...) end,
            },
            win = {
              input = {
                keys = {
                  ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any; goto definition on the type or field for details
      }

      vim.o.autoread = true -- Required for `opts.events.reload`

      -- Recommended/example keymaps
      vim.keymap.set(
        { "n", "x" },
        "<C-a>",
        function() require("opencode").ask("@this: ", { submit = true }) end,
        { desc = "Ask opencode…" }
      )
      vim.keymap.set(
        { "n", "x" },
        "<C-x>",
        function() require("opencode").select() end,
        { desc = "Select opencode…" }
      )

      vim.keymap.set(
        { "n", "x" },
        "go",
        function() return require("opencode").operator "@this " end,
        { desc = "Add range to opencode", expr = true }
      )
      vim.keymap.set(
        "n",
        "goo",
        function() return require("opencode").operator "@this " .. "_" end,
        { desc = "Add line to opencode", expr = true }
      )

      vim.keymap.set(
        "n",
        "<S-C-u>",
        function() require("opencode").command "session.half.page.up" end,
        { desc = "Scroll opencode up" }
      )
      vim.keymap.set(
        "n",
        "<S-C-d>",
        function() require("opencode").command "session.half.page.down" end,
        { desc = "Scroll opencode down" }
      )

      -- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above
      vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
      vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
    end,
  },

  {
    "grafana/vim-alloy",
  },
}

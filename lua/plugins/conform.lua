---@type LazySpec
return {
  "stevearc/conform.nvim",
  event = "VeryLazy",
  opts = {
    formatters = {
      biome = { require_cwd = true },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      go = { "goimports", "gofmt" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      less = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
      mdx = { "prettier" },
      vue = { "prettier" },
      svelte = { "prettier" },
      astro = { "prettier" },
      graphql = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 5000,
      lsp_format = "fallback",
    },
  },
}

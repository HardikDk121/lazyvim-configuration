return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cs = { "dotnet-format" }, -- or "csharpier"
        razor = { "dotnet-format" }, -- for .cshtml files
        html = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
      },
    },
  },
}

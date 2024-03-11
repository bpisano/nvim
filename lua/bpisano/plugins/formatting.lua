return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local conform = require("conform")
    local format_opts = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000,
    }

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier", "eslint_d" },
        typescript = { "prettier", "eslint_d" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      format_on_save = format_opts,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format(format_opts)
    end, { desc = "Format file or range (in visual mode)" })
  end,
}

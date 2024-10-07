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
        javascript = { "prettierd", "prettier", "eslint" },
        typescript = { "prettierd", "prettier", "eslint" },
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

    --    conform.formatters.eslint_d.args = {
    --      "--no-warn-ignored",
    --      "--format",
    --      "json",
    --      "--stdin",
    --      "--stdin-filename",
    --      "--fix-to-stdout",
    --      function()
    --        vim.api.nvim_buf_get_name(0)
    --      end,
    --    }

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format(format_opts)
    end, { desc = "Format file or range (in visual mode)" })
  end,
}

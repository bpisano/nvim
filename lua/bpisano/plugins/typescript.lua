return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  config = function()
    local ts = require("typescript-tools")
    ts.setup({
      settings = {
        tsserver_file_preferences = {
          includeCompletionsForModuleExports = true,
          includeCompletionsForImportStatements = true,
          importModuleSpecifierPreference = "relative",
        },
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.ts", "*.tsx" },
      callback = function()
        vim.cmd("TSToolsAddMissingImports")
        vim.cmd("TSToolsRemoveUnusedImports")
        vim.cmd("TSToolsOrganizeImports")
      end,
    })
  end,
}

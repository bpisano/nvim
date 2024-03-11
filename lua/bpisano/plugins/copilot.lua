return {
  "github/copilot.vim",
  event = { "InsertEnter" },
  config = function()
    vim.g.copilot_filetypes = { markdown = true, yaml = true, godot = true }
  end,
}

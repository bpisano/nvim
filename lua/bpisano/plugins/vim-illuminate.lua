return {
  "RRethy/vim-illuminate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local illuminate = require("illuminate")

    illuminate.configure({
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      filetypes_denylist = { "NvimTree" },
      delay = 100,
      min_count_to_highlight = 2,
    })
  end,
}

return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.g.rainbow_delimiters = {}
  end,
}

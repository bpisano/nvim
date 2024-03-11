return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local ibl = require("ibl")
    ibl.setup({
      indent = {
        char = "╎",
      },
    })
  end,
}

return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    local colorscheme = require("onedark")
    colorscheme.setup({
      style = "deep",
    })
    colorscheme.load()
  end,
}

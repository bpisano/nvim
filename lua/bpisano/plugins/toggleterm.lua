return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")
    local keymap = vim.keymap

    toggleterm.setup({
      size = 20,
      hide_numbers = false,
      open_mapping = [[<c-`>]],
      direction = "float",
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      close_on_exit = true,
      shell = vim.o.shell,
    })

    keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
    keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
    keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], { desc = "Move to the window on the left" })
    keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], { desc = "Move to the window below" })
    keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], { desc = "Move to the window above" })
    keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], { desc = "Move to the window on the right" })
  end,
}

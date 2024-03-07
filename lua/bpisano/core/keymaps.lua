local keymap = vim.keymap

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Registers
keymap.set("n", "x", '"_x', { desc = "Delete character under the cursor" })

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to the window on the left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to the window below" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to the window above" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to the window on the right" })

-- Resize window with arrows
keymap.set("n", "<A-Down>", ":resize -2<CR>", { desc = "Resize window down" })
keymap.set("n", "<A-Up>", ":resize +2<CR>", { desc = "Resize window up" })
keymap.set("n", "<A-Left>", ":vertical resize -2<CR>", { desc = "Resize window left" })
keymap.set("n", "<A-Right>", ":vertical resize +2<CR>", { desc = "Resize window right" })

-- Close windows
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Close window" })

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Search and replace
keymap.set("n", "<leader>rr", ":%s/", { desc = "Search and replace" })
keymap.set("x", "<leader>rv", [["hy:%s/<C-r>h//g<left><left>]], { desc = "Search and replace in visual mode" })

-- Insert
-- Press jk fast to enter command mode
keymap.set("i", "jk", "<ESC>", { desc = "Simulaneous to enter command mode" })

-- Visual
-- Better indenting
keymap.set("v", "<", "<gv", { desc = "Indent left" })
keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Move selected line / block of text in visual mode
keymap.set("v", "∆", ":'<,'>m '>+1<CR>==gv", { desc = "Move selected text down" })
keymap.set("v", "˚", ":'<,'>m '<-2<CR>==gv", { desc = "Move selected text up" })

-- Move current line / block of text in normal mode
keymap.set("n", "∆", ":m .+1<CR>==", { desc = "Move current line down" })
keymap.set("n", "˚", ":m .-2<CR>==", { desc = "Move current line up" })

-- Copy to clipboard
keymap.set("v", "p", '"_dP', { desc = "Paste without copying" })

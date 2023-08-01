local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Registers
keymap("n", "x", '"_x', opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize window with arrows
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Close windows
keymap("n", "<C-q>", ":q<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Search and replace
keymap("n", "<leader>rr", ":%s/", { noremap = true })
keymap("x", "<leader>rv", [["hy:%s/<C-r>h//g<left><left>]], { noremap = true })

-- Insert
-- Press jk fast to enter command mode
keymap("i", "jk", "<ESC>", opts)

-- Visual
-- Better indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move selected line / block of text in visual mode
keymap("v", "∆", ":'<,'>m '>+1<CR>==gv", opts)
keymap("v", "˚", ":'<,'>m '<-2<CR>==gv", opts)
keymap("v", "p", '"_dP', opts)

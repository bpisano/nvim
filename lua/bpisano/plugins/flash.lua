local status, flash = pcall(require, "flash")
if not status then
	return
end

flash.setup()

vim.keymap.set("n", "<leader>s", flash.treesitter, { noremap = true, silent = true })

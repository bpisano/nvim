local gitsigns_status, gitsigns = pcall(require, "gitsigns")
if not gitsigns_status then
	return
end

gitsigns.setup({
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol",
		delay = 1000,
	},
})

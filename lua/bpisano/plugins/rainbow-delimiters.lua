local status, _ = pcall(require, "rainbow-delimiters")
if not status then
	return
end

vim.g.rainbow_delimiters = {
	-- query = {
	-- 	[""] = "rainbow-blocks",
	-- },
}

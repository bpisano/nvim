local status, trouble = pcall(require, "trouble")
if not status then
	return
end

trouble.setup({
	mode = "workspace_diagnostics",
})

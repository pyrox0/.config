-- Core COQ Settings
vim.g.coq_settings = {
	auto_start = 'shut-up',
	xdg = true,
	keymap = {
		recommended = true,
	},
	match = {
		unifying_chars = {
		"-",
		"_",
		".",
		"/"
	},
		max_results = 20
	}
}

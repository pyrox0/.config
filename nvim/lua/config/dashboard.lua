-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- Dashboard-nvim configuration

local g = vim.g

-- Set finder
g.dashboard_default_executive = 'telescope'

-- set custom footer
vim.g.dashboard_custom_footer = {
	"Neovim loaded in " .. vim.fn.printf(
    	"%.3f",
    	vim.fn.reltimefloat(vim.fn.reltime(vim.g.start_time))
	) .. " seconds.",
}

-- disable dashboard sessions
g.dashboard_enable_session = false

-- Disable statusline in dashboard
g.dashboard_disable_statusline = true


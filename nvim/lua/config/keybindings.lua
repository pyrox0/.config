-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- The keybindings file
-- This defines all keybindings in a style that makes them useful with which-key.
-- This also means that this will be a very verbose file.

-- See https://github.com/folke/which-key.nvim#%EF%B8%8F-mappings
-- for my preferred style of mapping keys.

-- Make this less verbose.
local wk = require("which-key")

-- File keybindings, these start with "f"
wk.register({
	f = {
		name = "Find",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		n = { "<cmd>enew<cr>", "New File" },
		b = { "<cmd>Telescope file_browser hidden=true<cr>", "File Browser" },
		}
	},
	{
		mode = "n",
		prefix = "<leader>",
		noremap = true,
	}
)

-- Buffer manipulation Keybindings
wk.register({
	b = {
		name = "Buffers",
		n = { "<cmd>BufferNext<cr>", "Next Buffer" },
		p = { "<cmd>BufferPrevious<cr>", "Previous Buffer" },
		c = { "<cmd>BufferClose<cr>", "Close Buffer" },
		P = { "<cmd>BufferPin<cr>", "Pin/Unpin Buffer" },
		i = { "<cmd>BufferPick<cr>", "Pick Buffer" },
		m = {
			name = "Move Buffers",
			l = { "<cmd>BufferMovePrevious<cr>", "Move Buffer Left" },
			r = { "<cmd>BufferMoveNext<cr>", "Move Buffer Right" },
		},
		gl = { "<cmd>BufferLast<cr>", "Go To Last Buffer" },
	},
},
{
	mode = "n",
	prefix = "<leader>",
	noremap = true,
})

-- Help keybindings
wk.register({
	h = {
		name = "Help",
		s = { "<cmd>Telescope help_tags<cr>", "Search helptags" },
	}
},
{
	mode = "n",
	prefix = "<leader>",
	noremap = true,
})

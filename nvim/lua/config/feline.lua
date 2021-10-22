-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- Feline configuration
-- I use famiu/feline.nvim for my statusline,
-- and I don't use one of the built-in presets, though they are very good.
-- I built my own, mostly because I could.

-- Define the components table
local components = {
	active = {},
	inactive = {},
	force_inactive = {
		filetypes = {},
		buftypes = {},
		bufnames = {}
	}
}

-- Initialize active statusline
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

-- Variable definitions to make this easier to use
local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')
--local gps = require('nvim-gps')
local git = require('feline.providers.git')

-- Helper functions
local left_separator = function(seps, colors)
	local left_sep = {}
	for _, sep in ipairs(seps) do
	
	end
end
-- Bar that uses current mode color
components.active[1][1] = {
	provider = '▊ ',
	hl = function()
		local val = {}
		val.fg = vi_mode_utils.get_mode_color()
		return val
	end,
}

-- Components for left side when active
components.active[1][2] = {
	-- The current mode
	provider = 'vi_mode',
	hl = function()
		local val = {}
		
		val.name = vi_mode_utils.get_mode_highlight_name()
		val.fg = vi_mode_utils.get_mode_color()
		val.style = 'bold'

		return val
	end,
	right_sep = ' ',
}

components.active[1][3] = {
	-- File info
	provider = 'file_info',
	type = 'base-only',
	left_sep = {
		'vertical_bar',
	},
	right_sep = {
		'vertical_bar',
	}
}

-- Git Segments

-- Git branch
components.active[2][1] = {
	provider = 'git_branch',
	left_sep = { str = 'block' },
	right_sep = { str = 'block' },
	hl = { fg = 'cyan' },
	enabled = function() return git.git_info_exists(winid) end
}

components.active[2][2] = {
	provider = 'git_diff_added',
	hl = {
		bg = 'green',
		fg = 'black'
	},
	right_sep = {
		'block',
		hl = {
			bg = 'green'
		}
	},
	enabled = function() return git.git_info_exists(winid) end
}

components.active[2][3] = {
	provider = 'git_diff_removed',
	hl = {
		bg = 'red',
		fg = 'black'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'red' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'red' }
	},
	enabled = function() return git.git_info_exists(winid) end
}

components.active[2][4] = {
	provider = 'git_diff_changed',
	hl = {
		bg = 'violet',
		fg = 'black'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'violet' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'violet' }
	},
	enabled = function() return git.git_info_exists(winid) end
}

-- Nvim-gps
--components.active[3][1] = {
--	provider = function() return gps.get_location() end,
--	enabled = function() return gps.is_available() end,
--	hl = {
--		bg = 'bg'
--	}
--}

-- LSP segments
components.active[4][1] = {
	provider = 'diagnostic_hints',
	hl = {
		fg = 'black',
		bg = 'cyan'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'cyan' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'cyan' }
	},
	enabled = function() return lsp.diagnostics_exist('Hint', winid) end
}
components.active[4][2] = {
	provider = 'diagnostic_info',
	hl = {
		fg = 'black',
		bg = 'oceanblue'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'oceanblue' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'oceanblue' }
	},
	enabled = function() return lsp.diagnostics_exist('Info', winid) end
}
components.active[4][3] = {
	provider = 'diagnostic_warnings',
	hl = {
		fg = 'black',
		bg = 'yellow'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'yellow' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'yellow' }
	},
	enabled = function() return lsp.diagnostics_exist('Warning', winid) end
}
components.active[4][4] = {
	provider = 'diagnostic_errors',
	hl = {
		fg = 'black',
		bg = 'bg'
	},
	left_sep = {
		str = 'block',
		hl = { fg = 'bg' }
	},
	right_sep = {
		str = 'block',
		hl = { fg = 'bg' }
	},
	enabled = function() return lsp.diagnostics_exist('Error', winid) end
}

components.active[5][1] = {
	-- file percentage
	provider = 'line_percentage',
	left_sep = {
		{str = ' '},
		{
			str = 'block',
			hl = {
				fg = 'black',
			}
		},
	},
	right_sep = {
		{
			str = 'block',
			hl = {
				fg = 'black',
			}
		},
		{str = ' '}
	},
	hl = {
		fg = 'skyblue',
		bg = 'black'
	}
}

-- Disable on certain types of files
components.force_inactive.filetypes = {
	'packer',
	'help'
}

components.force_inactive.buftypes = {
	'terminal',
}


local colors = {
	fg = '#F8F8F2',
	bg = '#44475A',
	black = '#0F0F0F',
	skyblue = '#8BE9FD',
	cyan = '#8BE9FD',
	green = '#50FA7B',
	oceanblue = '#6272A4',
	magenta = '#FF79C6',
	orange = '#FFB86C',
	red = '#FF5555',
	violet = '#BD93F9',
	white = '#F8F8F2',
	yellow = '#F1FA8C',
}

-- Setup with a few things
require('feline').setup ({
	properties = props,
	components = components,
	colors = colors,
})

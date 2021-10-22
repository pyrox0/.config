-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- Neovide Configuration
-- I use Neovide, a neovim frontend written in rust.
-- This is my config for it, using the settings listed at
-- https://github.com/neovide/neovide/wiki/Configuration

-- Set some variables to make this less verbose

-- vim.o is global options
local o = vim.o

-- vim.wo is options that only affect the (w)indow
local wo = vim.wo

-- vim.bo is options that only affect the (b)uffer
local bo = vim.bo

-- Set refresh rate to 60
g.neovide_refresh_rate = 60

-- Set transparency to 1(this disables transparency)
g.neovide_transparency = 1.0

-- Set neovide to use fullscreen
g.neovide_fullscreen = 'v:true'

-- Set neovide to remember last window size.
g.neovide_remember_window_size = 'v:true'

-- Allow neovide to use the Super key in combos
g.neovide_input_use_logo = 'v:true'

-- Set animation length
g.neovide_cursor_animation_length = 0.2

-- Set cursor trail length
g.neovide_cursor_trail_legth = 0.5

-- Set cursor particles
g.neovide_cursor_vfx_mode = 'railgun'


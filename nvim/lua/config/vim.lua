-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- Set some variables to make this less verbose

-- vim.g is global options
local g = vim.g

-- vim.o is general options
local o = vim.o

-- vim.wo is options that only affect the (w)indow
local wo = vim.wo

-- vim.bo is options that only affect the (b)uffer
local bo = vim.bo

-- Run Vim commands a bit more tersely
local cmd = vim.cmd


-- Set timeoutlen
g.timeoutlen = 50

-- Tab width 4.
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
-- Set better colors
o.termguicolors = true

-- Set background colors
o.background = 'dark'

-- Show cursor position below each window
o.showmode = true

-- Autoindent
o.autoindent = true

-- The difference between these(above and below this) can be found here:
-- https://vi.stackexchange.com/questions/5818

-- Smart indent
o.smartindent = true

-- Autowrite buffers when leaving
o.autowriteall = true

-- Always write without asking
o.writeany = true

-- Reread files if they are modified outside of vim.
o.autoread = true

-- Set line numbering to relative
o.relativenumber = true
o.number = true

-- Set font
vim.cmd("set guifont=FiraCode\\ Nerd\\ Font\\ Mono:h14")

-- Disable some providers
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_python_provider = 0

-- Disable all built-in vim plugins
g.loaded_gzip = 0
g.loaded_zip = 0
g.loaded_zipPlugin = 0
g.loaded_tar = 0
g.loaded_tarPlugin = 0
g.loaded_getscript = 0
g.loaded_getscriptPlugin = 0
g.loaded_vimball = 0
g.loaded_vimballPlugin = 0
g.loaded_2html_plugin = 0
g.loaded_matchit = 0
g.loaded_matchparen = 0
g.loaded_logiPat = 0
g.loaded_rrhelper = 0
g.loaded_netrw = 0
g.loaded_netrwPlugin = 0
g.loaded_netrwSettings = 0
g.loaded_netrwFileHandlers = 0
g.loaded_getscriptPlugin = 0

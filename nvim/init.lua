-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- init.lua, where it all begins. This is the heart of the config, and 
-- everything in the config eventually leads back here.

-- Load impatient.nvim for fast loading.
--require'impatient'.enable_profile()

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end


-- Load packer_compiled file
require('packer_compiled')

-- Load the plugins file. This incurs virtually no runtime penalty, as lazy-
-- loading plugins is handled by packer.nvim.
require('plugins')

-- Load globals
require('global')

-- Load core vim settings
-- This is needed for a better vanilla vim experience
require('config.vim')

-- Load my keybindings
require('config.keybindings')

-- Load my custom autocommands
require('config.autocmds')

-- Set leader
require("nvim-mapper").map("n", "<Space>", "<Nop>", { silent = true }, "", "", "")

-- Because vim.cmd doesn't seem to work for me, set colorscheme now.
vim.cmd('colorscheme dracula')

-- Set leader and unmap space from anything else
vim.g.mapleader = " "

-- set default notification thing to nvim-notify
vim.notify = require("notify")

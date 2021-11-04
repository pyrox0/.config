-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- The plugins file, where the magic happens. This lazy-loads all the plugins.
-- All plugins will have a short comment explaining what they do. 

-- Bootstrap Packer and make sure it's installed correctly.
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup({function(use)
	
	-- Libraries and Backend Packages
	-- These are plugins which make other plugins work
	-- This also include the package manager and my 
	-- preferred theme.

	-- Allow Packer to manage itself
	-- Packer: The Neovim package manager
	-- Reason: It's better than nvim-paq.
	use { 'wbthomason/packer.nvim' }

	-- Impatient.nvim
	-- Speeds up neovim loading times a lot.
	use 'lewis6991/impatient.nvim'

	-- For tami5's fork of impatient.nvim
	use { "tami5/sqlite.lua", disable = true }


	-- Libraries
	-- Depended on by many plugins

	-- Plenary: All the functions I didn't want to write twice.
	use {'nvim-lua/plenary.nvim', as = 'plenary',}

	-- Popup: an implementation of Vim's popup API in Neovim.
	use {'nvim-lua/popup.nvim', as = 'popup',}

	-- A fancy notification manager for Neovim.
	use {'rcarriga/nvim-notify', as = 'notify',}

	-- Dracula Theme
	-- Reason: I love it
	use {
		'dracula/vim',
		as = 'dracula',
        after = 'dashboard'
	}
	-- LSP-colors
	-- Extra highlight groups for vim/pre-lsp colorschemes
	use { 
            'folke/lsp-colors.nvim',
        }

	-- Nvim-web-devicons
	-- The better devicons plugin
	use {'kyazdani42/nvim-web-devicons', as = 'devicons',}

	-- Literally only used to set leader
	use {
    	"lazytanuki/nvim-mapper",
		as = 'nvim-mapper',
    	config = function() require("nvim-mapper").setup{} end,
	}

	-- Neovim Tree-sitter
	use {
		"nvim-treesitter/nvim-treesitter",
		disable = false,
		as = "treesitter",
		run = ":TSUpdate",
		config = function()
			require('config.treesitter')
		end,
        on = 'BufEnter'
	}

	-- Core Plugins
	-- These are the backbone of my workflow.

	-- Which-key.nvim
	-- The Vim/Emacs which-key plugin ported to Neovim and Lua!
	use {
		'folke/which-key.nvim',
		as = 'whichkey',
		config = function() require("config.which-key") end,
	}

	-- Telescope
	-- The juicy fuzzy finder and more. 
	
	use {
		'nvim-telescope/telescope.nvim',
		as = 'telescope',
		requires = {'popup', 'plenary', 'nvim-mapper'},
		config = function() require('config/telescope') end,
	}

	-- Barbar.nvim
	-- Tabs, as understood by all other editors
	use {
		'romgrk/barbar.nvim',
		as = 'barbar',
  		requires = {'devicons'},
	}

	-- feline.nvim
	-- A better, more programmable statusbar
	use {
		'famiu/feline.nvim',
		as = 'feline',
		requires = {'gitsigns', 'devicons'},
		config = function() require('config.feline') end,
	}

	-- Dashboard
	use {
		'goolord/alpha-nvim',
		as = 'dashboard',
		config = function() 
			require'alpha'.setup(require'alpha.themes.dashboard'.opts) 
		end,
	}


	-- LSP Plugins
	
	-- Nvim-LSPConfig: common configs for many LSP servers
	use {
		'neovim/nvim-lspconfig',
		as = 'lspconfig',
		config = function() require('config.lsp') end,
	}
    
	-- Rust-tools.nvim:
	-- Rust tools for writing rust in neovim.
	use {
		'simrat39/rust-tools.nvim',
		as = 'rust-tools',
		after = 'lspconfig',
		config = function() require('config.rust-tools') end
	}

	-- Null-LS
	-- Use formatters as LSP servers 
	use {
		'jose-elias-alvarez/null-ls.nvim',
		as = 'null-ls',
		after = 'lspconfig',
		config = function() require('config.null-ls') end
	}

	-- Autocomplete
	
	-- COQ.nvim
	-- Fast as Fuck neovim completion plugin
	use {
		'ms-jpq/coq_nvim',
		as = 'coq.nvim',
		branch = 'coq',
		run = ':COQdeps',
		config = function() require('config.coq') end,
	}
	-- Snippets for COQ.nvim
	use {
		'ms-jpq/coq.artifacts',
		as = 'coq.artifacts',
		after = 'coq.tp',
		branch = 'artifacts',
	}	
	-- Integrations for COQ.nvim
	use {
		'ms-jpq/coq.thirdparty',
		as = 'coq.tp',
		after = 'coq.nvim',
		branch = '3p',
		config = function() require('config.coq_3p') end
	}
	
	-- Note-taking plugins(orgmode/neorg/other plugins)

	-- Neorg: Modern neovim notetaking and more.
	use { 
    	"nvim-neorg/neorg",
		disable = true,
		as = "neorg",
    	config = function() require('config.neorg') end,
    	requires = "plenary"
	}

	-- Orgmode.nvim
	use {
		'kristijanhusak/orgmode.nvim',
		as = 'orgmode',
		after = 'treesitter',
		branch = 'tree-sitter',
        ft = 'org',
		config = function() require ('config.orgmode') end
		}
	
	-- Org Bullets
	-- orgmode.nvim extension for fancy bullets
	use {
		'akinsho/org-bullets.nvim',
		as = 'org-bullets',
		after = 'orgmode',
		config = function() require('config.org-bullets') end
	}

	-- Git plugins
	use {
		'lewis6991/gitsigns.nvim',
  		requires = { 'plenary' },
		as = 'gitsigns',
        cmd = 'BufEnter',
		config = function() require('config.gitsigns') end
	}


	-- Misc Plugins
	
	-- Vim Tmux config syntax
	use {
		'tmux-plugins/vim-tmux',
		as = 'tmux-conf',
		after = 'sniprun',
		ft = 'tmux'
	}

	-- Sniprun: Fast code snippet execution
	 use { 
		 'michaelb/sniprun',
		 as = 'sniprun',
		 after = 'coq.nvim',
	 	 run = 'bash ./install.sh',
		 config = function() require('config.sniprun') end
	}

end,
config = {
	-- Packer Configuration
	display = {
		open_fn = require'packer.util'.float,
		prompt_border = 'single',
	},
	log = { level = 'info' },
	profile = {
		enable = true
	},
	compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
}})

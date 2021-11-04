-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- Treesitter configuration
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
-- Custom parsers

-- Neorg
--parser_configs.norg = {
--    install_info = {
--        url = "https://github.com/nvim-neorg/tree-sitter-norg",
--        files = { "src/parser.c", "src/scanner.cc" },
--        branch = "main"
--    },
--	filetype = "norg"
--}

-- Org
parser_configs.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    files = {'src/parser.c', 'src/scanner.cc'},
	branch = 'main'
  },
  filetype = 'org',
}

-- Makefile
parser_configs.make = {
	install_info = {
		url = 'https://github.com/alemuller/tree-sitter-make',
		files = {'src/parser.c' },
		branch = 'main'
	},
	filetype = 'make'
}

require('nvim-treesitter.configs').setup {
	ensure_installed = {
		--'bash',
		--'beancount',
		--'bibtex',
		'c',
		--'c_sharp',
		--'clojure',
		--'cmake',
		--'comment',
		--'commonlisp',
		--'cpp',
		--'css',
		--'cuda',
		--'dart',
		--'dockerfile',
		--'dot',
		--'elm',
		--'erlang',
		--'fennel',
		--'fish',
		--'fortran',
		--'glimmer',
		--'glsl',
		--'go',
		--'gomod',
		--'graphql',
		--'haskell',
		--'hcl',
		--'heex',
		--'hjson',
		--'html',
		--'java',
		--'javascript',
		--'jsdoc',
		--'json',
		--'jsonc',
		--'json5',
		--'julia',
		--'kotlin',
		--'latex',
		--'ledger',
		'lua',
		--'make',
		--'nix',
		--'norg',
		--'ocaml',
		--'ocaml_interface',
		--'org',
		--'perl',
		--'php',
		--'pioasm',
		'python',
		--'ql',
		--'query',
		--'r',
		--'regex',
		--'rst',
		--'ruby',
		'rust',
		--'scala',
		--'scss',
		--'sparql',
		--'supercollider',
		--'surface',
		--'svelte',
		--'tlaplus',
		--'toml',
		--'tsx',
		--'turtle',
		--'typescript',
		--'verilog',
		'vim',
		--'vue',
		--'yaml',
		--'yang',
		--'zig'
	},
	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = false
	},
	indent = {
		enable = true
	}
}

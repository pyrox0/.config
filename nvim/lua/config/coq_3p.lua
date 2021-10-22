-- COQ.3p settings
-- 3rd-party completion sources
require("coq_3p") {
	{ 
		-- Neovim Lua API Source
		src = 'nvimlua',
		short_name = 'NVIM',
		conf_only = true
	},
--	{
		-- Shell REPL source
--		src = 'repl',
--		sh = 'zsh',
--		shell = {
--			p = 'python',
--			n = 'node',
--		},
--		max_lines = 10,
--		deadline = 50,
--		unsafe = {
--			'rm',
--			'mv',
--			'brew',
--		}
--	},
--	{
		-- Calculator Source
--		src = 'bc',
--		short_name = 'CALC',
--		precision = 5
--	},
	{
		-- Orgmode.nvim Source
		src = 'orgmode',
		short_name = 'ORG'
	}
}

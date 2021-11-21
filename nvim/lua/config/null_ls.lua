local null_ls = require('null-ls')
local format = null_ls.builtins.formatting
local diagnostic = null_ls.builtins.diagnostics
local actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

local sources = {
    format.rustfmt,
	format.stylua.with({
        condition = function(utils)
            return utils.root_has_file("stylua.toml")
        end,
    }),
	format.black,
	format.fish_indent,
	format.gofmt,
	format.isort,
	format.taplo,
	format.trim_whitespace,
	
	diagnostic.shellcheck,
	diagnostic.luacheck,

}

null_ls.config({
	sources = sources,
})

require("lspconfig")["null-ls"].setup({
	on_attach = function(client)
    	if client.resolved_capabilities.document_formatting then
        	vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    	end
	end
})

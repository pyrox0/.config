local null_ls = require('null-ls')
local format = null_ls.builtins.formatting
local diagnostic = null_ls.builtins.diagnostics
local actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

local sources = {
    format.rustfmt,
    format.stylua,
} 

local null-ls = require('null-ls')
local format = null-ls.builtins.formatting
local diagnostic = null-ls.builtins.diagnostics
local actions = null-ls.builtins.code_actions
local hover = null-ls.builtins.hover

local sources = {
    format.rustfmt,
    format.stylua,
} 

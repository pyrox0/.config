-- mrhedgehog0's neovim config.
-- This is intended for use on my machines, and this is not a general-purpose
-- config. I don't provide support for anyone else's use cases, and if you
-- use this, expect breakages at any time, as I update my workflow. Thanks!
-- I do provide comments as to why I do what I do, but those may not be 
-- updated to reflect my current workflow, as my real notes are in a
-- private repo. But I try to keep the comments up to date.

-- The autocommands file
-- I load my autocommands in here. This is things like
-- Only loading certain plugins on filetype and 
-- cwd combos, for instance.

vim.cmd('augroup lua-dev')
vim.cmd('autocmd!')
vim.cmd('autocmd User StartLuaDev * ')
vim.cmd('autocmd BufEnter */.config/nvim* "doautocmd StartLuaDev"')
vim.cmd('augroup END')

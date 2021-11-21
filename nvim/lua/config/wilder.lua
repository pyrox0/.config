vim.cmd([[
	" let l:hl = wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#ff5555'}]),
	call wilder#setup({
		\ 'modes': [':', '/', '?'],
		\ 'next_key': '<Tab>',
		\ 'previous_key': '<S-Tab>',
		\ 'accept_key': '<Down>',
		\ 'reject_key': '<Up>',
		\ })

	call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
		\ 'highlights': {
		\   'border': 'Normal',
		\   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#ff5555'}]),
		\ },
		\ 'highlighter': wilder#lua_fzy_highlighter(),
		\ 'border': 'rounded',
		\ 'left': [
		\ ' ', wilder#popupmenu_devicons(),
		\ ],
		\ 'empty_message': wilder#popupmenu_empty_message_with_spinner(),
		\ })))

	call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#python_file_finder_pipeline({
      \       'file_command': ['rg', '--files', '-.'],
      \       'dir_command': ['fd', '-td'],
      \       'filters': ['fuzzy_filter', 'difflib_sorter'],
      \     }),
      \     wilder#cmdline_pipeline(),
      \     wilder#python_search_pipeline(),
      \   ),
      \ ])
]])

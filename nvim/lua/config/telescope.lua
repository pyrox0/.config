require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			-- Alfred-specific files
			"%.alfredworkflow",
			"%.alfredpreferences",
			-- macOS-specific files
			"%.app",
			".DS_Store",
			".CFUserTextEncoding",
			-- Images
			"%.jpg",
			"%.png",
			"%.webp",
			-- Misc files I can't open in neovim.
			"%.pdf",
			-- Vim swap files
			"%.swp",
			-- GPG-Encrypted files
			"%.gpg",
			".password-store/"
		},

	}
}

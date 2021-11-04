# Installation file for my dotfiles
# By mrHedgehog
# For my use only, really. Don't use this.



function install_wezterm_terminfo
	tempfile (mktemp) \
	&& curl -o $tempfile https://raw.githubusercontent.com/wez/wezterm/main/termwiz/data/wezterm.terminfo \
	&& tic -x -o ~/.terminfo $tempfile \
	&& rm $tempfile
end

# Installation file for my dotfiles
# By mrHedgehog
# For my use only, really. Don't use this.


# I use wezterm, so install it's terminfo definition
function install_wezterm_terminfo
	tempfile (mktemp) \
	&& curl -o $tempfile https://raw.githubusercontent.com/wez/wezterm/main/termwiz/data/wezterm.terminfo \
	&& tic -x -o ~/.terminfo $tempfile \
	&& rm $tempfile
end

# I use pipx for my python cli apps, so install it
# With pip. This is the only cli app I install with pip.
function install_pipx
	python3 -m pip install --user pipx
end

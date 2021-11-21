color_echo 026E00 "Installing Node.js"

set -l LATEST_NODE=17
fnm completions > ~/.config/fish/completions/fnm.fish
fnm install LATEST_NODE-1
fnm install LATEST_NODE
fnm default LATEST_NODE-1
fnm use default

color_echo F69220 "Installing NPM packages!"

fish ~/.config/install/npm.fish

color_echo F69220 "Done installing NPM packages!"

color_echo 026E00 "Done installing Node.js!"

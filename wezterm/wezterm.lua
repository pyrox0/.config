local fish;
local wezterm = require'wezterm'

if  os.getenv("__CFBundleIdentifier") then
    fish = "/Users/993390/.brew/bin/fish"
else
    fish = "/usr/bin/fish"
end

return {
    default_prog = {fish, "-l"},
    term = "wezterm",
   
	-- Set font
    font = wezterm.font("FiraCode Nerd Font Mono")
}

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
    
    font = wezterm.font_with_fallback({
	"Input Mono",
	"FiraCode Nerd Font Mono",
    })
}

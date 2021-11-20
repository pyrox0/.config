local fish;
local wezterm = require'wezterm';

if  os.getenv("__CFBundleIdentifier") then
    fish = "/Users/993390/.brew/bin/fish"
else
    fish = "/usr/bin/fish"
end

local BOX = utf8.char(0x275A)
local BAR = utf8.char(0x2758)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local edge_background = "#FB0022"
  local background = "#FB1032"
  local foreground = "#808080"

  if tab.is_active then
    background = "#2B2042"
    foreground = "#C0C0C0"
  elseif hover then
    background = "#3B3052"
    foreground = "#909090"
  end

  local edge_foreground = background

  -- ensure that the titles fit in the available space,
  -- and that we have room for the edges
  local title = wezterm.truncate_to_width(tab.active_pane.title, max_width-2)

  return {
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=BAR},
    {Background={Color=background}},
    {Foreground={Color=foreground}},
    {Text=title},
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=BOX},
  }
end)

return {
	-- Launch fish by default
    default_prog = {fish, "-l"},

	-- Set TERM to wezterm
	-- This is installed on all my machines
    term = "wezterm",
   
	-- Set fonts
	font_size = 13,
    font = wezterm.font_with_fallback({
		"Input Mono",
		"FuraCode Nerd Font Mono",
		"all-the-icons",
		"file-icons",
		"FontAwesome",
		"github-octicons",
		"Material Icons",
		"Weather Icons"
	}),

	-- Set color scheme
	color_scheme = "Dracula",
	
	-- We want to use our fonts for everything
	custom_block_glyphs = false,


}

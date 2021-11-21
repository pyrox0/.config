function config_color_echo -d "Takes 2 arguments, and formats the second with the color set in the first." -a "color phrase"
	set_color $argv[1]
	echo $argv[2]
	set_color normal
end

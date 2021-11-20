color_echo orange "Installing rust apps"

function install_cargo_apps
	while read -la app
		cargo install $app
	end < ../Packagefiles/Cargofile
end

install_cargo_apps

color_echo green "Done installing rust apps!"

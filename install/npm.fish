
function install_npm_apps
	while read -la app
		npm install --global $app
	end < ../Packagefiles/Npmfile
end

install_npm_apps

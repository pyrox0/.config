
function install_py_cli_apps
	while read -la app
		pipx install $app
	end < ../Packagefiles/Pipfile
end

install_py_cli_apps

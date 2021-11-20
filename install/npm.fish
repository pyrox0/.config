corepack enable
corepack prepare pnpm --activate

function install_npm_apps
	while read -la app
		pnpm add -g $app
	end < ../Packagefiles/Npmfile
end

install_npm_apps

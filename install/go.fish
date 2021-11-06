while read -la package
	go install $package
end < ../Packagefiles/Gofile

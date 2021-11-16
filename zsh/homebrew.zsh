export HOMEBREW_PREFIX="/Users/993390/.brew"; export HOMEBREW_CELLAR="/Users/993390/.brew/Cellar"; export HOMEBREW_REPOSITORY="/Users/993390/.brew"; export HOMEBREW_SHELLENV_PREFIX="/Users/993390/.brew"; export PATH="/Users/993390/.brew/bin:/Users/993390/.brew/sbin${PATH+:$PATH}"; export MANPATH="/Users/993390/.brew/share/man${MANPATH+:$MANPATH}:"; export INFOPATH="/Users/993390/.brew/share/info:${INFOPATH:-}";
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_INSTALL_FROM_API=1
alias brewfile="pushd ~/.config/Packagefiles && rm Brewfile ; HOMEBREW_NO_AUTO_UPADATE=1 brew bundle dump && popd"

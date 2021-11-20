set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
pkill pinentry
pkill gpg
pkill ssh-agent
eval (gpg-agent --daemon --enable-ssh-support --pinentry-program ~/.brew/bin/pinentry-mac | sed 's/=/ /g' | sed 's/SSH_AUTH_SOCK/set SSH_AUTH_SOCK/')

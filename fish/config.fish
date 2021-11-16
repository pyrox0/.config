if status is-interactive
    starship init fish | source
    zoxide init --cmd cd fish | source
	source "$__fish_config_dir"/gpg.fish
end

source "$__fish_config_dir"/set_env.fish
source "$__fish_config_dir"/set_path.fish

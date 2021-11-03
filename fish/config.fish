if status is-interactive
    starship init fish | source
    zoxide init --cmd cd fish | source
end

source $__fish_config_dir/set_env.fish
source $__fish_config_dir/set_path.fish

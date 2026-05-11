if status is-interactive
    # Interactive-only commands

    # Better cd
    zoxide init fish | source

    # Atuin
    atuin init fish | source

    # Optional startup commands
	# fastfetch -c examples/12
	fastfetch -c examples/28
	# fastfetch -c examples/29
    # cbonsai -L 18 -M 2
    # fastfetch -c examples/9.jsonc
    # fastfetch -c examples/13.jsonc
end

# PATH
fish_add_path $HOME/.local/bin

# Environment variables
set -gx MOZ_ENABLE_WAYLAND 1
set -gx LIBVA_DRIVER_NAME iHD

# Aliases
alias prime-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias safessh='TERM=xterm-256color ssh'

if status is-login
    and test "$XDG_VTNR" = "1"
    and not set -q WAYLAND_DISPLAY
    exec start-hyprland >/dev/null 2>&1
end

if status is-interactive
    # Interactive-only commands

    # Better cd
    zoxide init fish | source

    # Atuin
    atuin init fish | source

    # fnm
    fnm env --use-on-cd | source

    # Optional startup commands
	# fastfetch -c examples/4
	# fastfetch -c examples/9
	# fastfetch -c examples/13
	# fastfetch -c examples/28
	# fastfetch -c examples/29
    # cbonsai -L 18 -M 2
echo "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⢟⡆⠀⠈⠳⣽⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⢀⠄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢢⡀⠀⠀⠀⠀⠀⠀⠘⣇⢀⠤⣀⠈⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠀⠀⡎⠀⣧⠀⠀⠀⠀⠹⡀⠀⠀⠀⠀⠈⢿⣄⠀⠀⠀⠀⠀⠀⢻⢡⠢⡲⡳⡀⣧⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⢰⠂⡷⠀⢿⡄⠀⠀⠀⠀⣧⢦⣀⠳⣄⠀⠈⢿⡄⠀⠀⠀⠀⠀⠸⠘⡆⢌⠷⠃⢸⢦⣡⠓⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣀ ⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⢸⠀⡇⠀⢸⣧⢠⠀⠀⢀⢸⣿⡽⠷⣮⢵⣤⡘⣧⠀⠀⠀⠀⠀⢀⡆⢣⡼⠀⣴⡇⠤⠔⠃⣹⠁⠀⠀⠀⠀⠀⠀⠀⠀⠲⢶⣶⣮⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⢸⠀⠀⠀⠀⣿⣆⡇⠀⠘⡆⡿⡇⢀⠤⢛⣭⣿⣿⡀⠀⠀⠀⠀⠈⡇⠈⠃⢀⣿⣷⣴⣶⣴⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠈⠻⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⣿⣸⠀⠀⠀⠀⢹⢿⣿⠀⢀⢱⡇⣿⡅⢠⠿⣏⠧⠓⡇⠀⠀⠀⠀⠀⡇⠀⡖⢿⣿⡻⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⢰⣧⣷⢦⣄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡏⣦⣧⠀⠀⢸⠘⣿⡇⠸⣸⡇⡇⠀⠏⠖⠉⢀⡀⢠⣇⠀⠀⠀⠀⡇⠀⠁⠈⢻⣿⡜⠳⢤⣤⣄⣤⣤⣤⣤⣤⣄⣠⣀⠀⢸⣿⠀⣤⠘⠓⠛⠀⠀⠁
⣶⣶⣶⣶⣶⣤⣤⣦⣤⣼⣿⣿⣷⢹⣿⡀⠀⢸⢠⠚⣿⠀⠈⡇⠀⠀⠀⠀⠶⠋⠁⢸⢻⠀⠀⠀⣆⡇⠀⠀⠀⠀⠻⣷⡘⣗⢖⠍⠟⢿⣿⣿⣿⡟⠋⠉⠀⣿⣿⠀⡧⠀⢢⣌⠳⠄⠀
⣿⣿⣿⣿⣿⣿⣿⢛⣿⣿⣿⣿⣿⣎⣿⣧⠀⣞⣰⠻⣟⣇⠀⡇⠀⠀⠀⠀⠀⠀⠀⡞⠈⣾⡇⢠⣿⡇⡀⠀⠀⠀⢀⡿⣧⢈⡙⢧⡀⠈⠻⠍⠉⠁⠈⠀⣨⣿⣿⡆⡉⠀⢸⣏⡇⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⣿⣦⡋⠘⡼⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⣇⡼⣸⢀⠃⠀⠀⠀⡼⠈⢸⠑⠿⢅⣉⠛⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣧⠀⠀⠙⠧⠦⠤
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡇⡏⠡⠀⡁⠀⠀⢀⣤⡲⠁⢿⢸⢁⢏⢾⠀⠀⠀⡼⢱⡇⡼⠀⠀⠀⠀⠈⠉⣰⠟⠉⣔⠾⢿⠿⣿⣿⣧⡀⠀⠀⠐⣖⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢣⣀⠀⠀⠀⢴⣅⠞⠁⠀⠈⣿⢈⠎⡇⠀⢀⣼⣵⠟⡿⠁⠀⠀⠀⠀⠀⣰⠇⠀⢮⠃⡰⠋⠀⡼⠉⠓⠢⢄⡀⠀⣧⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⠘⣕⠫⣶⣤⣄⡀⠀⠀⠀⠀⣸⠃⠀⠃⣠⣾⣿⢟⠞⠀⠀⠀⠀⠀⠀⢀⡟⠀⣘⢃⠞⠀⣠⠎⠀⠀⠀⠀⠀⠈⠓⢯⣦
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⠹⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⡇⢸⡏⠓⠠⠄⠚⠣⣤⣶⣿⣿⣿⠗⠁⠀⠀⠀⠀⠀⠀⢀⢼⡇⠀⠻⠃⢀⡔⠁⠀⠀⠀⠀⠀⢀⡄⠀⠐⠽⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠓⣧⣤⣽⣿⣍⣿⣿⣭⠉⣿⣿⣿⣿⢸⡇⠘⡇⠀⠀⠀⠀⠀⠀⢙⢿⡉⠀⠀⠀⠀⠀⠀⢀⠤⠊⠁⣾⠀⢸⡇⣠⠊⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠀⠹
"
end

# PATH
fish_add_path $HOME/.local/bin

# Environment variables
set -gx MOZ_ENABLE_WAYLAND 1
set -gx LIBVA_DRIVER_NAME iHD

# Aliases
alias prime-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias safessh='TERM=xterm-256color ssh'
alias d-off="sudo systemctl stop docker.service docker.socket && sudo systemctl disable docker.service docker.socket"
alias d-on="sudo systemctl enable docker.service docker.socket && sudo systemctl start docker.service"

# opencode
fish_add_path /home/kisaragi/.opencode/bin

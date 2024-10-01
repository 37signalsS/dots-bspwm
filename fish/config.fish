if status is-interactive

set -g fish_greeting

alias n='nvim'

alias bton='sudo systemctl start bluetooth && sleep 3 && $HOME/.config/polybar/scripts/bluetooth_start.sh'

alias btoff='$HOME/.config/polybar/scripts/bluetooth_start.sh && sleep 3 && sudo systemctl stop bluetooth'

alias vpnon='sudo systemctl start tailscaled && sleep 3 && sudo tailscale up'

alias vpnoff='sudo systemctl stop tailscaled && sleep 3 && sudo tailscale down' 

zoxide init fish | source

thefuck --alias | source

starship init fish | source

end

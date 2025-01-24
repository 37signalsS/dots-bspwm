if status is-interactive

set -g fish_greeting

alias n='nvim'

alias nv='sudo -Es nvim'

alias cd='z'

alias lg='lazygit'

alias ssh='kitten ssh'

alias vpnon='sudo systemctl start tailscaled && sleep 3 && sudo tailscale up'

alias vpnoff='sudo systemctl stop tailscaled && sleep 3 && sudo tailscale down' 

alias ls='eza --tree --icons=always --long --git'

alias l='ls'

zoxide init fish | source

thefuck --alias | source

starship init fish | source

atuin init fish | source

end

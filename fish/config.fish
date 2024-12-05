if status is-interactive

set -g fish_greeting

alias n='nvim'

alias nv='sudo -Es nvim'

alias add='git add .'

alias push='git push'

alias ssh='kitten ssh'

alias vpnon='sudo systemctl start tailscaled && sleep 3 && sudo tailscale up'

alias vpnoff='sudo systemctl stop tailscaled && sleep 3 && sudo tailscale down' 

zoxide init fish | source

thefuck --alias | source

starship init fish | source

end

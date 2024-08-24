if status is-interactive

alias x='cd /home/q/.config/'

alias mi='micro $(fzf -m --preview="micro {}")'

zoxide init fish | source

starship init fish | source

end

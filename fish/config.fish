if status is-interactive

alias mi='fzf --preview="cat {}" | xargs -r code'

zoxide init fish | source

starship init fish | source

end

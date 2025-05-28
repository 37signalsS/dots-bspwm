function z
    set -l selected_file (fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --query '')
    if test -n "$selected_file"
        zeditor "$selected_file"
    end
end

function x 
    sudo -v
    set -l selected_file (sudo find / -type f 2>/dev/null | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --query '')
    if test -n "$selected_file"
        xdg-open "$selected_file"
        exit
    else
        echo "Файл не выбран."
    end
end

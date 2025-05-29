function x
      set -l selected_file (fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --query '')
      if test -n "$selected_file"
          xdg-open "$selected_file"
          exit
      end
  end

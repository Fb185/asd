#!/bin/bash
directory(){ # fd excludes hidden directories by default
    fd . '/home/' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white>directory ;cd $(cat directory)
}

file(){ #rg seems to be faster
    file=$(fd . '/home/' --type f | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white>file; xdg-open $(cat file))
}

hiddendir(){ # includes hidden directories
  dir=$(find ~/ type f | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white>file; xdg-open $(cat file))
}
while getopts ":dfh" option; do
   case $option in
      d) 
         directory
         ;;
      f)
        file
        ;;
      h)
        hiddendir
        ;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done


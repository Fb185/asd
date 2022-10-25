#!/bin/bash
directory(){ # fd excludes hidden directories by default
    dir=$(fd . '/home/naruto' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white);cd $dir
}

file(){ #rg seems to be faster
    file=$(fd . '/home/naruto' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white);vim $file
}

hiddendir(){ # includes hidden directories
    hdir=$(fd . '/home/naruto' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white);cd $hdir
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


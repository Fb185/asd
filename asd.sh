#!/bin/bash
directory(){ # fd excludes hidden directories by default
  cd && dir=$(cd |fd . '/home/' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $dir
  # cd && dir=$(cd |fd . '/home/naruto/' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $dir
}

file(){ #rg seems to be faster
  cd &&  file=$(cd | rg --files |fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && vim $file
}

hiddendir(){ # includes hidden directories
  cd && dir=$(cd |find $HOME/ -type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $dir
}
while getopts ":dfh" option; do
   case $option in
      d) 
         directory
         exit;;
      f)
        file
        exit;;
      h)
        hiddendir
        exit;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done

#cd && dir=$(cd |fd . '/home/' --type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $dir
directory

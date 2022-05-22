#!/bin/bash

cd && file=$(cd |find $HOME/ -type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $file



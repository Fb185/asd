#!/bin/bash

cd && file=$(cd |find my_shit/ -type d | fzf -e --tac --reverse --info=inline --border=sharp --color=border:white) && cd -- $file



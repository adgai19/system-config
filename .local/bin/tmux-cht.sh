#!/usr/bin/env bash
selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf`
# ripped from theprimegen's dotfiles
read -p "Enter Query: " query


query=`echo $query | tr ' ' '+'`

if grep -qs "$selected" ~/.tmux-cht-languages; then
#
    tmux popup bash -c "curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux popup bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
# tmux neww bash -c "curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"


#!/bin/bash
setxkbmap -v us workman -option caps:swapescape -option ctrl:swap_lalt_lctl
xmodmap -e "keycode 108 = Alt_R"

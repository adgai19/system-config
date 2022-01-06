#!/bin/bash
setxkbmap -option caps:swapescape
xcape -e 'Shift_L=Control_L|B'
#xcape -e 'Control_L=Control_L|A'
i3-workspace-names-daemon&

# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.

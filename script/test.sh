#!/bin/bash
setxkbmap -option caps:swapescape
xcape -e 'Shift_L=Control_L|B'
#xcape -e 'Control_L=Control_L|A'
i3-workspace-names-daemon&

# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.
spare_modifier="Hyper_L"
xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
xmodmap -e "add Control = $spare_modifier"

# Map space to an unused keycode (to keep it around for xcape to
# use).
xmodmap -e "keycode any = space"

# Finally use xcape to cause the space bar to generate a space when tapped.
xcape -e "$spare_modifier=space"

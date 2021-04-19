#!/bin/bash
setxkbmap -option caps:swapescape
xcape -e 'Shift_L=Control_L|B'
xcape -e 'Control_L=Control_L|A'
i3-workspace-names-daemon&

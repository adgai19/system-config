alias cls="echo -ne '\033c'"
alias u="cd .."
alias debdev="docker start debian-dev && docker attach debian-dev"
alias woff="nmcli networking off"
alias won="nmcli networking on"
alias modelsim="wine .wine/drive_c/Modeltech_pe_edu_10.4a/win32pe_edu/modelsim.exe"

alias excon="xrandr --output HDMI-1 --auto --right-of eDP-1"
alias exdis="xrandr --output HDMI-1 --off"
alias exconl="xrandr --output HDMI-1 --auto --left-of eDP-1"
alias wiscan="nmcli device wifi rescan"
alias bi=brigntness+
alias bd=brightness-
alias pg="ping google.com"
alias wioff="nmcli radio wifi off"
alias wion="nmcli radio wifi on"
alias getshell="perl -lpe 's/\0/ /g' /proc/$(xdotool getwindowpid $(xdotool getactivewindow))/cmdline"

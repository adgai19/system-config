# Defined in - @ line 1
function excon --description 'alias excon xrandr --output HDMI-1 --auto --right-of eDP-1 '
	xrandr --output HDMI-1 --auto --right-of eDP-1  $argv;
end
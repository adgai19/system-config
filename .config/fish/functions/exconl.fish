# Defined in - @ line 1
function exconl --wraps='xrandr --output HDMI-1 --auto --left-of eDP-1' --description 'alias exconl xrandr --output HDMI-1 --auto --left-of eDP-1'
  xrandr --output HDMI-0 --auto --left-of DP-4 $argv;
end

# Defined in - @ line 1
function exdis --wraps='xrandr --output HDMI-1 --off' --description 'alias exdis xrandr --output HDMI-1 --off'
  xrandr --output HDMI-1 --off $argv;
end

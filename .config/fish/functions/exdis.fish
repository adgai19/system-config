# Defined in - @ line 1
function exdis --wraps='xrandr --output HDMI-1 --off' --description 'alias exdis xrandr --output HDMI-1 --off'
  set display (xrandr -q |grep -F  \ connected|awk '{print $1}' |tail -n 1)
  xrandr --output $display --off $argv;
end

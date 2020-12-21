# Defined in - @ line 1
function excon --wraps='xrandr --output HDMI-1 --auto --right-of eDP-1 ' --description 'connect external display on hdmi output'
  set display (xrandr -q |grep -F  \ connected|awk '{print $1}' |tail -n 1)
  set display2 (xrandr -q |grep -F  \ connected|awk '{print $1}' |head -n 1)
  echo $display
  echo $display2
  xrandr --output $display --auto --right-of $display2  $argv;
end

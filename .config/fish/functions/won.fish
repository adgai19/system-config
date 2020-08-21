# Defined in - @ line 1
function won --wraps='nmcli networking on' --description 'alias won nmcli networking on'
  nmcli networking on $argv;
end

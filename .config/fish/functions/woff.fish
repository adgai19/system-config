# Defined in - @ line 1
function woff --wraps='nmcli networking off' --description 'alias woff nmcli networking off'
  nmcli networking off $argv;
end

# Defined in - @ line 1
function wioff --wraps='nmcli radio wifi off' --description 'alias wioff nmcli radio wifi off'
  nmcli radio wifi off $argv;
end

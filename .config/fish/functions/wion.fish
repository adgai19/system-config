# Defined in - @ line 1
function wion --wraps='nmcli radio wifi on' --description 'alias wion nmcli radio wifi on'
  nmcli radio wifi on $argv;
end

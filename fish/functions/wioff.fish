# Defined in - @ line 1
function wioff --description 'alias wioff nmcli radio wifi off'
	nmcli radio wifi off $argv;
end

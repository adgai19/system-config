# Defined in - @ line 1
function wion --description 'alias wion nmcli radio wifi on'
	nmcli radio wifi on $argv;
end

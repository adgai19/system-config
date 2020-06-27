# Defined in - @ line 1
function woff --description 'alias woff nmcli networking off'
	nmcli networking off $argv;
end

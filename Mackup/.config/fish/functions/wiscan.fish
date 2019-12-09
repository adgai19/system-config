# Defined in - @ line 1
function wiscan --description 'alias wiscan nmcli device wifi rescan'
	nmcli device wifi rescan $argv;
end

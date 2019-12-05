# Defined in - @ line 1
function cls --description alias\ cls\ echo\ -ne\ \'\\033c\'
	echo -ne '\033c' $argv;
end

# Defined in - @ line 1
function wiscan --wraps='nmcli device wifi rescan' --description 'alias wiscan nmcli device wifi rescan'
  nmcli device wifi rescan $argv;
end

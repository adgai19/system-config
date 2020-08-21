# Defined in - @ line 1
function cls --wraps=echo\ -ne\ \'\\033c\' --description alias\ cls\ echo\ -ne\ \'\\033c\'
  echo -ne '\033c' $argv;
end

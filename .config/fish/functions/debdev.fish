# Defined in - @ line 1
function debdev --wraps='docker start debian-dev && docker attach debian-dev' --description 'alias debdev docker start debian-dev && docker attach debian-dev'
  docker start debian-dev && docker attach debian-dev $argv;
end

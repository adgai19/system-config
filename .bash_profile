if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"


source /home/adgai/.config/broot/launcher/bash/br
if [ -e /home/adgai/.nix-profile/etc/profile.d/nix.sh ]; then . /home/adgai/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "$HOME/.cargo/env"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

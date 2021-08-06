if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.cargo/bin:$PATH"

source /home/adgai/.config/broot/launcher/bash/br
if [ -e /home/adgai/.nix-profile/etc/profile.d/nix.sh ]; then . /home/adgai/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

alias cat="batcat"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
#alias vlc="devour vlc"
alias ls="exa"
alias l="exa -lahF"
alias matlab="/usr/local/MATLAB/R2018a/bin/matlab"
alias upgrade="sudo apt update; and apt upgrade"
alias tree "tree -C"
alias exconmir="xrandr --output HDMI-0 --auto --same-as eDP-1"
alias fd=fdfind
alias gca="git commit -a"
alias gcm="git commit -m"
alias gcma="git commit -a -m"
alias gs="git status"
alias gp="git push -u origin"
alias ga="git add -A"
alias xclip="xclip -sel clip"
set fish_greeting
set PATH /root/.cargo/bin /home/adgai/.cargo/bin /home/adgai/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin $HOME/script
#set fish_function_path $fish_function_path " /home/adgai/.local/lib/python3.8/site-packages/powerline/bindings/fish"
set fish_function_path $fish_function_path ~/.local/lib/python3.8/site-packages/powerline/bindings/fish/
#powerline-setup
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
#alias dismic="sudo sh -c "echo 'blacklist snd_hda_intel' >> /etc/modprobe.d/blacklist.conf"
alias vi=nvim
alias t=tmux
alias ta="tmux a"
alias tl="tmux ls"
alias drivemount="google-drive-ocamlfuse ~/google-drive"
#
##set -Ux PYENV_ROOT $HOME/.pyenv
#set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
#if command -v pyenv 1>/dev/null 2>&1;
#source (pyenv init - | psub)
#end
#pyenv init - | source"
alias ipytopdf="jupyter-nbconvert --to PDFviaHTML"
alias brightness="xrandr --output DP-4 --brightness"
export GEM_HOME="$HOME/gems"

export PATH="$HOME/anaconda3/bin:$PATH:/usr/local/bin"
export LANG=en_IN.UTF-8
#export PATH="$PATH:/usr/local/cuda/bin"

export EDITOR='nvim'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/adgai/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/include:$LD_LIBRARY_PATH
zoxide init fish | source
#alias cd="z"
starship init fish |source

alias cat="batcat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias ls="exa"
alias l="exa -lahF"
alias matlab="/usr/local/MATLAB/R2018a/bin/matlab"
alias upgrade="sudo apt update; and apt upgrade"
alias z="cd -"
alias exconmir="xrandr --output HDMI-1 --auto --same-as eDP-1"
thefuck --alias | source
begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
alias gca="git commit -a"
alias gcm="git commit -m"
alias gcma="git commit -a -m"
alias gs="git status"
alias gp="git push -u origin"
alias ga="git add -A"
#begin
#    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
#    if test -e $AUTOJUMP_PATH
#        source $AUTOJUMP_PATH
#    end
#end

#source /usr/share/autojump/autojump.fish
set PATH /root/.cargo/bin /home/adgai/.cargo/bin /home/adgai/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin
#set fish_function_path $fish_function_path " /home/adgai/.local/lib/python3.8/site-packages/powerline/bindings/fish"
#powerline-setup
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

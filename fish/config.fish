alias cat="bat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias ls="exa"
alias l="exa -lahF"
alias matlab="/usr/local/MATLAB/R2018a/bin/matlab"
alias upgrade="sudo apt update; and apt upgrade"
alias z="cd -"

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
begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

source /usr/share/autojump/autojump.fish

alias cat="bat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#alias vlc="devour vlc"
alias ls="exa"
alias l="exa -lahF"
alias ssh="kitty +kitten ssh"
alias p8="ping 8.8.8.8 -c 4"
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
alias workman="setxkbmap -layout us workman"
alias qwerty="setxkbmap -layout us "
set fish_greeting
export DENO_INSTALL="/home/adgai/.deno"
set PATH /root/.cargo/bin /home/adgai/.cargo/bin /home/adgai/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin $HOME/script /home/adgai/.local/apache-maven-3.8.3/bin $HOME/go/bin $DENO_INSTALL/bin ~/script
#set fish_function_path $fish_function_path " /home/adgai/.local/lib/python3.8/site-packages/powerline/bindings/fish"
set fish_function_path $fish_function_path ~/.local/lib/python3.8/site-packages/powerline/bindings/fish/
#powerline-setup
#export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
#alias dismic="sudo sh -c "echo 'blacklist snd_hda_intel' >> /etc/modprobe.d/blacklist.conf"
alias vi=nvim
alias v=nvim
alias t=tmux
alias ta="tmux a"
alias tl="tmux ls"
alias drivemount="google-drive-ocamlfuse ~/google-drive"
alias f="nvim (fzf)"
alias fc="cat (fzf)"
alias fd="cd (find . -type d |fzf)"
alias fdf="rm -rf (fzf)"
export FZF_DEFAULT_COMMAND='ag -g ""'
alias ctof="lowriter --convert-to pdf"
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
#/* source ~/.asdf/asdf.fish */
#export PATH="mnt/data/anaconda3/bin:$PATH:/usr/local/bin"
export LANG=en_IN.UTF-8
#export PATH="$PATH:/usr/local/cuda/bin"


#alias unset 'set --erase'
#
#
#export NPM_PACKAGES="/home/adgai/.npm-packages"
#export NODE_PATH="$NPM_PACKAGES/lib/node_modules{NODE_PATH:+:$NODE_PATH}"
#export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
#unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
#export MANPATH="$NPM_PACKAGES/share/man:(manpath)"

export EDITOR='nvim'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /mnt/data/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/include:$LD_LIBRARY_PATH
zoxide init fish | source
#alias cd="z"
starship init fish | source


#export JAR=~/eclipse/java-2021-06/eclipse/plugins/org.eclipse.equinox.launcher_1.6.200.v20210416-2027.jar
#export GRADLE_HOME=$HOME/gradle
export JAVA_HOME=(readlink -f /usr/bin/java | sed "s:/bin/java::")
#export JDTLS_CONFIG=/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux
#export WORKSPACE=$HOME/workspace
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
#/* export NODE_OPTIONS=--openssl-legacy-provider */
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

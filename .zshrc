# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/adgai/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rust)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi ="nvim"

alias cat="bat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#alias vlc="devour vlc"
alias grep="rg"
alias pbar="watch -n 0.5 progress"
alias proxmoxkill="ssh proxmox -t shutdown now"
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
alias dockerkill="docker ps|tail -n+2|fzf|awk '{print $1;}'|xargs docker rm -f"
export DENO_INSTALL="/home/adgai/.deno"
#set fish_function_path $fish_function_path " /home/adgai/.local/lib/python3.8/site-packages/powerline/bindings/fish"
# set fish_function_path $fish_function_path ~/.local/lib/python3.8/site-packages/powerline/bindings/fish/
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
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# kubectl context stuff
# set DEFAULT_KUBE_CONTEXTS "$HOME/.kube/config"
# if test -f "{DEFAULT_KUBE_CONTEXTS}"
#     export KUBECONFIG="DEFAULT_KUBE_CONTEXTS"
# end
# # Additional contexts should be in ~/.kube/custom-contexts/ 
# set CUSTOM_KUBE_CONTEXTS "$HOME/.kube/custom-contexts"
# mkdir -p "{CUSTOM_KUBE_CONTEXTS}"
#
# set OIFS "$IFS"
# set IFS '\n'
# for contextFile in ( find "$CUSTOM_KUBE_CONTEXTS" -type f -name "*.yml" )
#     printf '%s' (contextFile)
#     export KUBECONFIG="$contextFile:$KUBECONFIG"
# end
# set IFS "$OIFS"

#export JAR=~/eclipse/java-2021-06/eclipse/plugins/org.eclipse.equinox.launcher_1.6.200.v20210416-2027.jar
#export GRADLE_HOME=$HOME/gradle
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
#export JDTLS_CONFIG=/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux
#export WORKSPACE=$HOME/workspace
#/* export NODE_OPTIONS=--openssl-legacy-provider */
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

export GOPATH=$HOME/go
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH=/root/.cargo/bin:/home/adgai/.cargo/bin:/home/adgai/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/script:/home/adgai/.local/apache-maven-3.8.3/bin:$HOME/go/bin:$DENO_INSTALL/bin:~/script:GOROOT/bin:$GOPATH/bin:~/.pulumi/bin


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin":$PATH
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# Generated for envman. Do not edit.
# test -s "$HOME/.config/envman/load.fish"; && source "$HOME/.config/envman/load.fish"
# # Generated for envman. Do not edit.
# [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


# shorten a path in $1 to max of $2 characters, prepending a "..."
function __shortpath {
    if [[ ${#1} -gt $2 ]]; then
        len=$2+3
        echo "..."${1: -$len}
    else
        echo $1
    fi
}

function __short_hostname {
    echo $(hostname -s)
}

find_git_dirty() {
    local status=$(git status --porcelain 2> /dev/null)
    local git_dirty=''

    if [[ "$status" != "" ]]; then
        git_dirty='✘'
    else
        git_dirty='✔'
    fi
    echo $git_dirty
}

find_git_branch() {
    # Based on: http://stackoverflow.com/a/13003854/170413
    # https://gist.github.com/sindresorhus/3898739
    local branch=''
    local git_branch=''
    if branch=$(git symbolic-ref --short HEAD 2> /dev/null); then
        if [[ '$branch' == 'HEAD' ]]; then
            git_branch='(detached*)'
        else
            # str=$(git rev-list --left-right --count origin/${branch}...${branch})
            # from_o=$(echo $str | cut -f1 -d" ")
            # to_o=$(echo $str | cut -f2 -d" ")
            git_branch=" (${branch}|$(find_git_dirty))"
        fi
    fi
    echo "$git_branch"
}

if [ -e /lib/terminfo/x/xterm-256color ]; then
    export TERM="xterm-256color"
else
    export TERM="xterm-color"
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
# HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
# HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

bold=$(tput bold)
reset=$(tput sgr0)
green=$(tput setaf 10)
red=$(tput setaf 9)
yellow=$(tput setaf 11)
blue=$(tput setaf 12)
cyan=$(tput setaf 14)
purple=$(tput setaf 13)

if [ "$color_prompt" = yes ]; then
    PS1=$'\[$green\]\j\[$reset\]:\[$cyan\]$(__shortpath "\w" 15)\[$red\]$(find_git_branch) \[$yellow\]?\[$reset\] '
else
    PS1=$'\j:$(__shortpath "\w" 15) ? '
fi
unset color_prompt force_color_prompt

dircolors=$HOME/.dircolors-$(tput colors)
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    if [[ -f $dircolors ]]; then
        eval $(dircolors -b $dircolors)
    else
        eval $(dircolors)
    fi
    alias ls='ls --color=auto -F'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export EDITOR='emacsclient -c -a emacs'
export PAGER="less"

alias 7zaa="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias 7up='svn up'
alias emacsc="emacsclient -c"
alias emacst="emacsclient -t"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

GAMES_PATH=/usr/games
# default path
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$GAMES_PATH

#export GOROOT=/usr/local/go
export NVIM_TUI_ENABLE_TRUE_COLOR=1

if [ -f ~/.pythonrc ]; then
    export PYTHONSTARTUP=~/.pythonrc
fi

GRUVBOX_SHELL="$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
[[ -s $GRUVBOX_SHELL ]] && source $GRUVBOX_SHELL

VENVWRAPPER=/usr/local/bin/virtualenvwrapper.sh
[[ -s $VENVWRAPPER ]] && source $VENVWRAPPER

JAVA_PATH="$HOME/bin/export_java.sh"
[[ -s $JAVA_PATH ]] && source $JAVA_PATH

KOTLIN_PATH="$HOME/bin/export_kotlin.sh"
[[ -s $KOTLIN_PATH ]] && source $KOTLIN_PATH

GRADLE_PATH="$HOME/bin/export_gradle.sh"
[[ -s $GRADLE_PATH ]] && source $GRADLE_PATH

export PATH=$PATH:~/opt/eclipse

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mkarmona/opt/google-cloud-sdk/path.bash.inc' ]; then source '/home/mkarmona/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mkarmona/opt/google-cloud-sdk/completion.bash.inc' ]; then source '/home/mkarmona/opt/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$PATH:/usr/local/go/bin:~/opt/nim-0.17.0/bin:~/.nimble/bin

alias open-targets="gcloud --project open-targets"
alias open-targets-eu-dev="gcloud --project open-targets-eu-dev"
alias open-targets-library="gcloud --project open-targets-library"
alias open-targets-staging="gcloud --project open-targets-staging"
alias icat="kitty +kitten icat"
# Load pyenv automatically by adding
# the following to ~/.bash_profile:

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mkarmona/.sdkman"
[[ -s "/home/mkarmona/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mkarmona/.sdkman/bin/sdkman-init.sh"

# added by travis gem
[ -f /home/mkarmona/.travis/travis.sh ] && source /home/mkarmona/.travis/travis.sh
# added by Anaconda2 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/home/mkarmona/opt/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/home/mkarmona/opt/anaconda2/etc/profile.d/conda.sh" ]; then
#         . "/home/mkarmona/opt/anaconda2/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/home/mkarmona/opt/anaconda2/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/mkarmona/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/mkarmona/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mkarmona/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/mkarmona/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/doc/fzf/examples/key-bindings.bash
eval "$(starship init bash)"

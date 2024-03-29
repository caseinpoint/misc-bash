## ls ##
alias ls='ls -FG --color=auto'
alias la='ls -aFG --color=auto'
alias ll='ls -lFG --color=auto'


## apt ##

# update and upgrade apt packages (bash script):
alias aptup="sudo $HOME/bin/apt_upgrade"

# apt install:
alias aptin='sudo apt update && sudo apt install'


## brew ##

# update and upgrade brew casks:
alias brewup="$HOME/bin/brew_upgrade"


## omz ##

alias omzon="trash $HOME/.zshrc && cp $HOME/.zshrc.omz $HOME/.zshrc && exit"
alias omzoff="trash $HOME/.zshrc && cp $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc && exit"


## git ##

alias gs='git status'
alias gl='git log'
alias gg='git log --graph'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gf='git fetch'
alias gb='git branch'
alias gc='git checkout'
alias gr='git restore'

# push/pull:
function gpu(){
    git pu"$@"
}

# commit all tracked files w/comment and push:
function gcp(){
    if [[ -z $1 ]]
    then
        printf "Comment required. Aborting\n"
    else
        git commit -am "$1"
        git push
    fi
}


## python ##

# update pip and wheel:
alias pipu='pip3 install --upgrade pip wheel'

# virtual environment (to match Hackbright lecture commands):
alias virtualenv='python3 -m venv'

# delete ipython history:
alias ipclr="rm $HOME/.ipython/profile_default/history.sqlite 2> /dev/null"

# cd and activate virtual environment (bash script):
alias cda="source $HOME/bin/cd_env"

# poetry run invoke...:
alias pri='poetry run invoke'


## java ##

# compile a file and run it with all arguments:
function jcr(){
    javac "$1"

    # remove .java from first argument, then include any other arguments
    java "${1%.java}" "${@:2}"
}


## misc. ##

# ls:
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'

# mkdir and cd:
function mkcd(){
    mkdir $1 && cd $1
}

# trash (if command exists):
if [[ -x "$(command -v gio)" ]]; then
    alias trash='gio trash'
fi

# reboot:
alias reboot='shutdown -r "now" "Rebooting now."'

# simple calculator:
function calc(){
    echo "$1" | bc -l
}

# list info of processes listening on ports:
alias listen="sudo netstat -tulpn | egrep 'State\W+PID|LISTEN\W+[0-9]+'"

## network testing ##

# ping wi-fi router
alias pw='ping -t 10 -c 10 192.168.0.1'
# ping OpenDNS
alias pd='ping -t 10 -c 10 208.67.222.222'
# print network devices
alias pn='sudo nmap -sn 192.168.0.0/24'

# nordvpn:
alias vpns='nordvpn status'
alias vpni='nordvpn login'
alias vpno='nordvpn logout'
alias vpnc='nordvpn connect'
alias vpnd='nordvpn disconnect'

# sqltabs:
alias sqltabs="$HOME/Downloads/sqltabs.linux/sqltabs-linux-x64/sqltabs"


## hackbright ##

# no longer in use, commented out

# run autograder:
# alias grade="$HOME/HB/skills-assessments/autograder/autograder grade --rebuild --post"

# print 'all students present' script for copying:
# alias elf="cat $HOME/HB/my_tools/misc/elfing.js && echo"

# open demo lecture index.rst
# alias demo="code $HOME/HB/swe-curriculum/lectures/demo/index.rst"

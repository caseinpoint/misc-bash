## apt ##

# update and upgrade apt packages (bash script):
alias aptup='sudo ~/bin/apt_upgrade'

# apt install:
alias aptin='sudo apt update && sudo apt install'


## git ##

alias gs='git status'
alias gl='git log'
alias gg='git log --graph'
alias gd='git diff'
alias ga='git add'
alias gcam='git commit -am'
alias gf='git fetch'
alias gb='git branch'
alias gc='git checkout'
alias gr='git restore'

# push/pull:
function gp(){
    git p"$@"
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

# update pip:
alias pipu='pip3 install --upgrade pip'

# virtual environment (to match Hackbright lecture commands):
alias virtualenv='python3 -m venv'

# clear ipython history:
alias ipclr='gio trash /home/drue/.ipython/profile_default/history.sqlite 2> /dev/null'

# cd and activate virtual environment (bash script):
alias cda='source ~/bin/cd_env'

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

# trash instead of rm:
alias rm='gio trash'

# reboot:
alias reboot='shutdown -r "now" "Rebooting now."'

# simple calculator:
function calc(){
    echo "$1" | bc -l
}

# list info of processes listening on ports:
alias listen='sudo netstat -tulpn | grep LISTEN'

# run autograder:
alias grade='/home/drue/HB/skills-assessments/autograder/autograder grade --rebuild --post'

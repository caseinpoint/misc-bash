## apt ##

# update and upgrade apt packages (bash script):
alias aptup='sudo ~/bin/apt_upgrade'

# apt install:
alias aptin='sudo apt update && sudo apt install'


## git ##

# status:
alias gs='git status'

# log:
alias gl='git log'

# log graph:
alias gg='git log --graph'

# fetch:
alias gf='git fetch'

# commit all tracked files w/comment and push:
function gcp(){
    if [[ -z $1 ]]
    then
        printf "comment required\n"
    else
        git commit -am "$1"
        git push
    fi
}


## python ##

# virtual environment:
alias virtualenv='python3 -m venv'

# clear ipython history:
alias ipclr='gio trash /home/drue/.ipython/profile_default/history.sqlite 2> /dev/null'

# cd and activate virtual environment:
alias cda='source ~/bin/cd_env'


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

# simple calculator:
function calc(){
    echo "$1" | bc -l
}

# list info of processes listening on ports:
alias listen='sudo netstat -tulpn | grep LISTEN'

# run autograder:
alias grade='/home/drue/HB/skills-assessments/autograder/autograder grade --rebuild --post'

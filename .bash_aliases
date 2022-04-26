## apt ##
# update apt packages:
alias aptup='sudo ~/bin/apt_upgrade'
# apt install:
alias aptin='sudo apt update && sudo apt install'

# trash instead of rm:
alias rm='gio trash'

## python ##
# virtual environment:
alias virtualenv='python3 -m venv'
# clear ipython history:
alias ipclr='gio trash /home/drue/.ipython/profile_default/history.sqlite 2> /dev/null'
# cd and activate virtual environment:
alias cda='source ~/bin/cd_env'

# list info of processes listening on ports:
alias listen='sudo netstat -tulpn | grep LISTEN'

# run autograder:
alias grade='/home/drue/HB/skills-assessments/autograder/autograder grade --rebuild --post'

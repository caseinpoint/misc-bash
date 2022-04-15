## apt
alias aptin='sudo apt update && sudo apt install'
alias aptup='sudo ~/bin/apt_upgrade'

## python
alias virtualenv='python3 -m venv'
# clear ipython history:
alias ipclr='gio trash /home/drue/.ipython/profile_default/history.sqlite 2> /dev/null'

# cd and activate virtual environment:
alias cda='source ~/bin/cd_env'

# trash instead of rm:
alias rm='gio trash'

# list info of processes listening on ports:
alias listen='sudo netstat -tulpn | grep LISTEN'

## keyboard:
# alias koff='sudo ~/bin/kbd_off'
# alias kon='sudo ~/bin/kbd_on'

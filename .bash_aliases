# apt:
alias aptin='sudo apt update && sudo apt install'
#alias aptup='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias aptup='sudo ~/bin/apt_upgrade'

# keyboard:
alias koff='sudo ~/bin/kbd_off'
alias kon='sudo ~/bin/kbd_on'

# trash instead of rm:
alias rm='gio trash'

# clear ipython history:
alias ipclr='gio trash /home/drue/.ipython/profile_default/history.sqlite'


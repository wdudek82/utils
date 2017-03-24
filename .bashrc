# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias tree='tree -C'
alias cal='cal -m'
alias nano='nano -ET 4'
alias pip3="pip3.6"

# User specific aliases and functions
#PS1="\[\033[1;37m\]\u@\h \[\033[1;34m\]\w \$\[\033[0m\] "

. /home/neevor/.bash_prompt.sh

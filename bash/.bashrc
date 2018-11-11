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
alias vi="vim"
alias tmux="./tmuxlaunch.sh"
alias hangups="hangups --col-scheme solarized-dark"

# User specific aliases and functions
#PS1="\[\033[1;37m\]\u@\h \[\033[1;34m\]\w \$\[\033[0m\] "

. /home/neevor/.bash_prompt.sh


man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

shopt -s histappend
shopt -s histreedit
shopt -s histverify
HISTCONTROL='ignoreboth'
PROMPT_COMMAND="history -a;history -c;history -r; $PROMPT_COMMAND"

export JAVA_HOME=/usr/java/jdk-11.0.1
export MAVEN=/usr/share/maven/bin
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN


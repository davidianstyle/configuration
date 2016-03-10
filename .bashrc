# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Define a few Colors
BLACK='0;30'
RED='0;31'
GREEN='0;32'
YELLOW='0;33'
BLUE='0;34'
MAGENTA='0;35'
CYAN='0;36'
WHITE='0;37'
BOLDBLACK='1;30'
BOLDRED='1;31'
BOLDGREEN='1;32'
BOLDYELLOW='1;33'
BOLDBLUE='1;34'
BOLDMAGENTA='1;35'
BOLDCYAN='1;36'
BOLDWHITE='1;37'
NOCOLOR='0'

if grep --color=auto --help 2> /dev/null 1>&2
then
        export GREP_OPTIONS='--color=auto'
        export GREP_COLOR=$YELLOW
fi

# Set up a custom prompt
export PS1="\[\e[${CYAN}m\][\u@\h \@]\[\e[m\] \[\e[${MAGENTA}m\]\w\[\e[m\] \n\[\e[${WHITE}m\]$ \[\e[m\]";

# Set default editor
export EDITOR=emacs

# Set xterm-256color for correct color scheme
export TERM=xterm-256color

# Ignore case for tab-completion
bind "set completion-ignore-case on"

#	$Id: .profile,v 1.1.1.1 2009/02/09 12:00:08 mit-sato Exp $
#
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin
export PATH
TERM=xterm
export TERM


# Uncomment next line to enable the builtin emacs(1) command line editor
# in sh(1), e.g. C-a -> beginning-of-line.
# set -o emacs


# # some useful aliases
# alias h='fc -l'
# alias j=jobs
# alias m=$PAGER
# alias ll='ls -lagFo'
# alias g='egrep -i'
 
# # be paranoid
# alias cp='cp -ip'
# alias mv='mv -i'
# alias rm='rm -i'


# # 8-bit locale (English, USA)
# LANG=en_US.ISO_8859-1; export LANG
 

# # set prompt: ``username@hostname$ '' 
# PS1="`whoami`@`hostname | sed 's/\..*//'`"
# case `id -u` in
# 	0) PS1="${PS1}# ";;
# 	*) PS1="${PS1}$ ";;
# esac

export LANG=ja_JP.eucJP
export LC_CTYPE=ja_JP.eucJP

alias vi='vim'
alias view='vim -R'
alias jman='env LC_CTYPE=ja_JP.eucJP jman'

export EDITOR='vim'
export PAGER='jless'
export LV='-Ou8'
###export LIBPTHREAD_BIGSTACK_MAIN=t

export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
#export LANG=ja_JP.eucJP
#export LC_CTYPE=ja_JP.eucJP
#export LANG=C
#export LC_CTYPE=C
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib

alias vi='vim'
alias view='vim -R'
alias jman='env LC_CTYPE=ja_JP.eucJP jman'

export EDITOR='vim'
#export PAGER='jless'
#export LV='-Ou8'
###export LIBPTHREAD_BIGSTACK_MAIN=t

if [ "$EMACS" == "t" ]
then
    export PS1='[\u@\h \W]\$ '
else
    export PS1='\033k\033\\[\u@\h \W]\$ '
fi

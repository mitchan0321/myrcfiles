#!/bin/csh

umask 022
set path=(~/bin /usr/local/bin \
          /bin /usr/bin /sbin /usr/sbin \
	  /usr/X11R6/bin \
	  /home/pgsql/bin \
	  .)

setenv LD_LIBRARY_PATH /usr/lib:/usr/X11R6/lib:/usr/local/lib:/home/pgsql/lib

set fignore=.o
set filec
#set ignoreeof
set notify
set savehist=100

setenv EDITOR vi
setenv PAGER less
if ($?EMACS) then
    setenv LANG ja_JP.eucJP
    setenv LC_ALL ja_JP.eucJP
    setenv LC_MESSAGES ja_JP.eucJP
else
    setenv LANG ja_JP.utf8
    setenv LC_ALL ja_JP.utf8
    setenv LC_MESSAGES ja_JP.utf8
endif
setenv LC_TIME C
setenv XMODIFIERS @im=SCIM
setenv BLOCKSIZE 1024
setenv PGPORT 5432
setenv CVSROOT :pserver:mit-sato@noppo:/home/cvs
#setenv EDITOR $HOME/bin/kterm-vi
set history=100

source ~/.alias
a	 setp	'set prompt="\\
'"`date '+%Y-%m-%d'` `whoami`@`hostname` "'$cwd\\
csh(\\!)> "'
a	 popd	"popd \!*  ; setp"
a	 pushd	"pushd \!* ; setp"
a	 cd	'cd \!* ; setp'
setp

# stty erase ^H

if ($TERM == "emacs") then
    setenv PAGER cat
endif

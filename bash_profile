#=== start of automatically maintained lines (do not delete)===
# .bashrc, sourced by interactive non-login shells (also called by .bash_profile)
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/home/y/bin:/usr/local/bin:/usr/X11R6/bin:~/bin
umask 022
export CVSROOT=vault.yahoo.com:/CVSROOT
export CVS_RSH=yssh
if [ "$PS1" != "" ]
then
	PS1="\h \t \w \$ "
	  setenv ()  { export $1="$2"; }
	unsetenv ()  { unset $*; }
fi

#===   end of automatically maintained lines (do not delete)===
# per-user custom comands go here...

if [ "x$YROOT_NAME" != "x" ]; then
    PS1="[\h:$YROOT_NAME \W]\\$ "
else
    PS1="[\h \W]\\$ "
fi

export time=(10 "S: %S U: %U E: %E")
export PATH=/home/y/bin:${PATH}:~/scripts
export CVS_RSH=yssh
export SVN_ASKPASS=1
export SVN_SSH='/usr/local/bin/yssh -q'
export SVNROOT=svn+ssh://svn.corp.yahoo.com/
export LESS="-X"
export LEGO_SRC_ROOT=/homes/mwlee/lego
#export DISPLAY=`who -m|awk '{print $6}'|tr -d \(|tr -d \)`:0.0

alias ssh="yssh" 
alias scp="yscp"
alias yerr="tail -f /home/y/logs/yapache/error"
alias ylog="tail -f /home/y/logs/yapache/access | /home/y/bin/readlog"
alias mv="mv -i"
alias f='find .'
alias y='yinst'
alias yc='yinst_create --clean'
alias l='less'
alias ls='ls -F --color=auto'
alias ll='ls -lt --color=auto'
alias emacs='/home/y/bin/emacs'
alias vi='vim'
alias mbdiff='diff -d --side-by-side --ignore-all-space --suppress-common-lines -W 158'
alias tmux='tmux attach || tmux new'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

# alias startall='yinst start udbclient\*; sudo ads-start; sudo webctl start'
# alias stopall='sudo webctl stop; sudo ads-stop; yinst stop udbclient\*'
# alias startp='yinst start udbclient\*; sudo ads-start;'
# alias stopp='sudo ads-stop; yinst stop udbclient\*'

set -o noclobber

settitle() {
  printf "\033k$1\033\\"
}

ssh() {
  settitle "${*%.yahoo.com}"
  command yssh "$@"
  settitle "bash"
}

#
# ~/.bashrc
#
#export TERM="rxvt-unicode-256color"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/usr/share/metasploit:/usr/bin/vendor_perl/exiftool:/usr/share/ruby1.9/bin:/home/blackswan/netbeans-8.0/bin/:/home/blackswan/.rbenv/bin
export MSF_DATABASE_CONFIG=/usr/share/metasploit/database.yml

eval "$(rbenv init -)"


#export GEM_HOME=~/.gem/ruby/2.0.0
#export PATH=$PATH:/home/blackswan/.gem/ruby/2.0.0/bin
export EDITOR="vim"
alias ls='ls --color=auto'
alias home="cd ~/"
alias upgrade='sudo pacman -Syu && yaourt -Syu'
alias msfconsole='/usr/share/metasploit/msfconsole'
alias proyecto='cd /home/blackswan/Programacion/Ruby/proyecto/securityportsinfo'


#ALIASES GIT

alias gs='git status '
alias ga='git add '
alias gb='git branch '
#alias gc='git commit'
alias gc='git commit -a -m'
#alias gca='git commit -a'
#alias gca='git commit -a'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gp='git pull'
alias push='git push'
alias pushm='git push origin master'
alias gr='git rebase '
alias gm='git merge '


alias got='git '
alias get='git '


# FIN ALIASES GIT





alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#if [ "$PSl" ]; then
#complete -cf sudo
#fi


# Color support
###if [ -x /usr/bin/dircolors ]; then
 ###   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
###    alias ls='ls --color=auto'
###fi


#Auto complete on terminal
if [ -f /etc/bash_completion ]; then
	./etc/bash_completion
fi

# Color man pages
###man() {
###	env \
###		LESS_TERMCAP_mb=$(printf "\e[38;5;128m") \
###		LESS_TERMCAP_md=$(printf "\e[38;5;128m") \
###		LESS_TERMCAP_me=$(printf "\e[0m") \
###		LESS_TERMCAP_se=$(printf "\e[0m") \
###		LESS_TERMCAP_so=$(printf "\e[38;5;45m") \
###		LESS_TERMCAP_ue=$(printf "\e[0m") \
###		LESS_TERMCAP_us=$(printf "\e[1;32m") \
###			man "$@"
###}



###force_color_prompt=yes

###if [ -n "$force_color_prompt" ]; then
###    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
###	color_prompt=yes
###    else
###	color_prompt=
###    fi
###fi


extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


captureI(){
 activeWinLine=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)")
 activeWinId="${activeWinLine:40}"
 import -window $activeWinId /tmp/`date +%F_%H%M%S_%N`.jpg
}

capture(){
import -window root /tmp/`date +%F_%H%M%S_%N`.jpg
}



###PS1="\[\e[38;5;45m\]┌─[\[\e[38;5;128m\]\t\[\e[38;5;45m\]]──[\[\e[38;5;128m\u\e[38;5;45m\]]──[\[\e[38;5;128m\]${HOSTNAME%%.*}\[\e[38;5;45m\]]:\w$\[\e[01;31m\]\n\[\e[38;5;45m\]└──\[\e[01;37m\](\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/usr/bin/ls -lah | /usr/bin/grep -m 1 total | 
/usr/bin/sed 's/total //')b\[\e[01;37m\])>>\[\e[0m\]"
#

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

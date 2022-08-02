#
# ~/.bashrc
#
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='['${grn}'\u'${ylw}'@'${red}'\h \W'${wht}']'${cyn}'\$ '${clr}''
PS1=' '${cyn}'\W '${grn}'> '${clr}''
. "$HOME/.cargo/env"

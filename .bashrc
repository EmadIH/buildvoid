# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ "

######## Xbps ShortcCat #######
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

##### Power Menu ######
alias off='doas poweroff'
alias reb='doas reboot'

##### Dwm Shortcut ######
alias make='doas make clean install'
alias patch='patch -p1 <'

##### Vim Shortcut ######
alias dvi='doas vim'
alias vi='vim'

##### Reconfigru ######
alias reconf='doas xbps-reconfigure -af'

##### Export #####
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/scripts:$PATH

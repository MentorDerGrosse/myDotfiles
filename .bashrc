# .bashrc

#history
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
HISTTIMEFORMAT='%F %T '

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias vi=nvim
alias vim=nvim 
# some more ls aliases
alias ll='ls -alF'
alias la='ls -Alh'
alias l='ls -CF'
alias lk='ls -lSrh' #Sort by size
alias lc='ls -lcrh' #Sort by change time
alias lt='ls -ltrh' #Sort by date
alias lsa='ls -lap' #Sort by alphabeth

# alias for cd ..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# home aliases
alias ~='cd ~'
alias home='cd ~'
alias c='clear'

# edit important config files aliases
alias bashrc='nvim ~/.bashrc'
alias nvimrc='nvim ~/.config/nvim/init.lua'
alias hosts='sudo nvim /etc/hosts'

# install aliases
alias dupdate='sudo dnf upgrade'
alias dinstall='sudo dnf install'
alias dremove='sudo dnf remove'
alias dsearch='dnf search'

# see which files use storage
alias usage='du -sh * 2>/dev/null | sort -h'

# some java aliases
alias javav='java -version'
alias javacv='javac -version'


alias weather='curl wttr.in'

fastfetch -l ~/.config/fastfetch/walle.txt

mc() {
    mkdir -p "$1" && cd "$1"
}

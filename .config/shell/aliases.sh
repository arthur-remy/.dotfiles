### INSTRUCTION TO BE IMPORTED IN BASHRC AND SIMILAR WITH SOURCE CMD

export NOTES='/home/arthur/Documents/Notes'

# CHANGE DEFAULT BEHAVIOR OF DEFAULT CMD

alias ll='ls -lAh --color=auto'
alias fd='fd -H'  # show hidden files
alias grep='grep --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias ping1='ping 1.1.1.1'

export LIBVIRT_DEFAULT_URI='qemu:///system'  # connect to root's VMs
export EDITOR=nvim

# CUSTOM COMMANDS

alias l='exa --icons --sort=.Name --all --group-directories-first'
alias e='nvim'
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias h='cht.sh'
alias c='cd "$(fd -H -t d . | fzf)"'
alias pac-history='sudo grep "\[ALPM\]" /var/log/pacman.log |  grep -E "installed|removed|upgraded" | less'
alias copydir='pwd | xclip -selection clipboard'


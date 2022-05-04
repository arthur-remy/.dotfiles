### INSTRUCTION TO BE IMPORTED IN BASHRC AND SIMILAR WITH SOURCE CMD


# CHANGE DEFAULT BEHAVIOR OF DEFAULT CMD

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

export LIBVIRT_DEFAULT_URI='qemu:///system'  # connect to root's VMs
export EDITOR=nvim

# CUSTOM COMMANDS

alias e='nvim'
alias helpcmd='nvim $HOME/.dotfiles/frequent_cmd.txt'
alias todo='nvim $HOME/Documents/Notes/todo.md'


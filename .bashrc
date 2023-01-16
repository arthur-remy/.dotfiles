source $HOME/.config/bash_aliases.sh

# Include hidden file in search results
export FZF_DEFAULT_COMMAND='fd . -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Man pages with syntax highlighting
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

set -o vi


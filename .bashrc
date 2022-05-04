source $HOME/.dotfiles/aliases.sh

# Include hidden file in search results
export FZF_DEFAULT_COMMAND='find .'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash


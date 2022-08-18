set -U EDITOR nvim
set -U fish_greeting

# load alias
source $HOME/.config/bash_aliases.sh

export FZF_DEFAULT_COMMAND='fd . -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

bind ! bind_bang


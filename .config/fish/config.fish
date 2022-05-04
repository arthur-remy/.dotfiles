set -U EDITOR vim
set -U fish_greeting

# load alias
source $HOME/.dotfiles/aliases.sh

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

bind ! bind_bang


# SYSTEM VARIABLE

export PATH="$PATH:$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CACHE_CONFIG="$HOME/.config"


# TOOL CONFIG

export ZDOTDIR="$HOME/.config/zsh"

export FZF_DEFAULT_COMMAND='fd . -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Man pages with syntax highlighting
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"


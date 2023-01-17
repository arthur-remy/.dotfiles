CONFIGDIR=${XDG_CONFIG_HOME:-$HOME/.config}

# only source file if it exists
function safe_source () {
	[ -f $1 ] && source $1
}

safe_source $CONFIGDIR/shell/utils.sh
safe_source $CONFIGDIR/shell/aliases.sh
safe_source $CONFIGDIR/zsh/vi-mode.sh

PROMPT="%(?..%F{red}[%?]%f )%2~ "

setopt autocd		# Automatically cd into typed directory.

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Load syntax highlighting; should be last.
safe_source $ZDOTDIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

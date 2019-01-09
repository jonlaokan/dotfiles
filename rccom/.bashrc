# If not interactive, do nothing
[[ -z $PS1 ]] && return

dots_bash="$HOME/.dotfiles/bash"

# Source everything

for f in $(ls $dots_bash); do
    . "$dots_bash/$f"
done

unset dots_bash


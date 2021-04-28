# If not interactive, do nothing
[[ -z $PS1 ]] && return

dots_bash="$HOME/.dotfiles/shells"

# Docker aliases
alias docker="sudo docker"
alias dc="sudo docker-compose"
alias vim="vimx"

# Source everything

for f in $(ls -A $dots_bash); do
    . "$dots_bash/$f"
done

unset dots_bash


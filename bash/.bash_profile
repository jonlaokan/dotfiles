# Load bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

dots="$HOME/.dotfiles/"

# Source everything

for f in $(ls $dots/bash); do
    . $f
done

unset dots

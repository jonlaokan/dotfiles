# Clipboard
alias setc='xclip -selection c'
alias getc='xclip -selection clipboard -o' 

# Arch
alias ya="yaourt --nameonly --pager --color --noconfirm $1"
alias pr='sudo pacman -Rs'
alias p='sudo pacman -S'

# PDF
openpdf() { mupdf $1 & }
alias pdf=openpdf

# Commands
alias j="jump"
alias m='mark'
alias lm='marks'
alias v='nvim'
alias m='mupdf -r 288'
alias ping='ping google.fr -c 3'
alias c='clear'

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# Config
alias zshrc="v ~/Code/dotfiles/zshrc.link"
alias i3conf="v ~/.config/i3/config"
alias xres="v ~/Code/dotfiles/Xresources && xrdb ~/.Xresources"
alias vinit="cd ~/Code/dotfiles/.config/nvim && v init.vim"
alias aliases="v ~/Code/dotfiles/aliases.sh"
alias tconf="v ~/Code/dotfiles/tmux.conf"
alias term="v ~/Code/dotfiles/termconf"
alias bsp="v ~/.config/bspwm/bspwmrc"
alias lemon="v ~/.config/lemonbuddy/config"

# Man == Tldr
alias h='tldr' 

# Fac
alias touist="vncdesk 1 ~/Code/logique/touist.jar"
alias gcc2="gcc -ansi -pedantic -Wall -Werror"

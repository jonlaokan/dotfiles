# Dir aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c-='cd -'
alias cd.='cd (readlink -f .)' # Follow the link to real dir

# List aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls CF'
alias l1='ls -1a'

# Vim
alias vim='nvim'

# Xclip
alias xp='xclip -o -selection clipboard'
alias xc='xclip -selection clipboard'

# Git
alias gs='git status'
alias ga='git add'
alias gpush='git push'
alias gpull='git pull'
alias gc='git commit -m'
alias gt='git tag -a'

set dots "~/.dotfiles/config/.config/"

# Dotfiles
alias termconf="nvim $dots/config/.config/kitty/kitty.conf"
alias vimconf="nvim $dots/config/.config/nvim/init.vim"
alias barconf="nvim $dots/xmobar/xmobar.conf"

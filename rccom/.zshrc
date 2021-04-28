# If not interactive, do nothing
[[ -z $PS1 ]] && return

dots_shell="$HOME/.dotfiles/shells"

# Source everything

for f in $(ls $dots_shell); do
    . "$dots_shell/$f"
done

unset dots_shell

# TODO Complete the prompt 
PS1="[%n]--[%N]--[%~]"


. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. $HOME/.local/share/dotfiles/zsh-history-substring-search.zsh

#
# ~/.bash_profile
#

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
export PATH=$PATH:$HOME/.notify
export PATH=$PATH:$HOME/.misc
export PATH=$PATH:$HOME/.bin

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	echo "starting x"
	exec startx
fi


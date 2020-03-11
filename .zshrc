HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000


function commands() {
	awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

alias topten="history | commands | sort -rn | head"


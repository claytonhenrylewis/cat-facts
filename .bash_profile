export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

HOUR=$(date +"%H")

if (( $HOUR < 6 )); then
	echo "Hello, $USER. You're up late!"
elif (( $HOUR < 12 )); then
	echo "Good morning, $USER."
elif (( $HOUR < 18 )); then
	echo "Good afternoon, $USER."
else
	echo "Good evening, $USER."
fi

date +"%c"

cat cat-facts.txt | shuf -n1

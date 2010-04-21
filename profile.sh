# export variables
. ~/.dotfiles/variables.sh

# load each file in mods/*.sh
for f in ~/.dotfiles/mods/*.sh
do
	. $f
done

# set the prompt
. ~/.dotfiles/prompt.sh
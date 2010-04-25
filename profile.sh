# export variables
source ~/.dotfiles/variables.sh

# load each file in mods/*.sh
for f in ~/.dotfiles/mods/*.sh; do
	source $f
done

# set the prompt
source ~/.dotfiles/prompt.sh
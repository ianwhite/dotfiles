# completions
source /usr/local/etc/bash_completion.d/git-completion.bash

# functions

# Git "dirty?" - for use in prompt
git-dirty() {
	# ignore large git repos that I know about
	if [[ $PWD =~ db/dump.* ]]; then
		echo "?"
	else
		git status 2>/dev/null | wc -l | awk '{if ($1 > 2) print "☆"}'
	fi
}
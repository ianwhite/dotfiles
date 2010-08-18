# completions
source /usr/local/etc/bash_completion.d/git-completion.bash

# functions

# Git "dirty?" - for use in prompt
#
# touch .no-git-dirty in your projects root to turn this off
git-dirty() {
	if [[ ! -e "$(git rev-parse --show-cdup 2>/dev/null || echo './').no-git-dirty" ]]; then
		git status 2>/dev/null | wc -l | awk '{if ($1 > 2) print "☆"}'
	fi
}
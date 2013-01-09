# completions
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# functions

# Git "dirty?" - for use in prompt
#
# touch .no-git-dirty in your projects root to turn this off
git-dirty() {
	if [[ ! -e "$(git rev-parse --show-cdup 2>/dev/null || echo './').no-git-dirty" ]]; then
		git status 2>/dev/null | wc -l | awk '{if ($1 > 2) print "☆"}'
	fi
}

# aliases
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
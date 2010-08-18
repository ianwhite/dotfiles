black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
grey='\[\e[0;37m\]'
normal='\[\e[m\]'

user="$green\u@\h$normal" 
dir=" $blue\W$normal"
prompt=" $grey\$$normal "

if [[ $PWD =~ db/dump.* ]]; then
	git="$cyan no git info for db/dump$normal"
else
	git="$cyan\$(__git_ps1 ' %s')$red\$(git-dirty)$normal"
fi	

[[ -r ~/.rvm/bin/rvm-prompt ]] && ruby=" $purple\$(~/.rvm/bin/rvm-prompt v p)$normal"

export PS1="$user$dir$ruby$git$prompt"
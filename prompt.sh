black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
light_purple='\[\e[1;35m\]'
cyan='\[\e[0;36m\]'
grey='\[\e[0;37m\]'
yellow='\[\e[1;33m\]'
normal='\[\e[m\]'

user="$green\u@\h$normal" 
dir=" $yellow\W$normal"
prompt=" $grey\$$normal "
git="$cyan\$(__git_ps1 ' %s')$red\$(git-dirty)$normal"

[[ -r ~/.rvm/bin/rvm-prompt ]] && ruby=" $light_purple\$(~/.rvm/bin/rvm-prompt)$normal"

export PS1="$user$dir$ruby$git$prompt"
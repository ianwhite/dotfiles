black='\e[0;30m'
red='\e[0;31m'
green='\e[0;32m'
blue='\e[0;34m'
purple='\e[0;35m'
cyan='\e[0;36m'
grey='\e[0;37m'
normal='\e[m'

User="$green\u@\h$normal" 
Dir=" $blue\W$normal"
Git="$cyan\$(__git_ps1 ' %s')$red\$(git-dirty)$normal"
Prompt=" $grey\$$normal "

export PS1="$User$Dir$Git$Prompt"
if [ -r ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if declare -f __git_ps1 > /dev/null ; then
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"; __git_ps1 "" "\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[00m\]$\[\033[00m\] " "\[\033[31m\](Git: %s)\\n"'
else
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[00m\]$\[\033[00m\] "
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

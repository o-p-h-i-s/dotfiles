autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

# alias
alias sudo='sudo '

alias to='touch'
alias so='source'

alias ls='ls --color=auto'
alias ll='ls -alF'

alias ..='cd ..'
alias ...='cd ../..'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias em='${EDITOR} /etc/portage/make.conf'
alias ez='${EDITOR} ~/.zshrc'
alias sz='source ~/.zshrc'

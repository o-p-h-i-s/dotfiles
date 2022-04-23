## completions
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

## color
autoload -Uz colors && colors

## prompt
export PS1='[%n %~]%# '

## set
set IGNOREEOF
set no_flow_control
set share_history
set histignorealldups
set correct

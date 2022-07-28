# Created by newuser for 5.9
## completions
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

## color
autoload -Uz colors && colors

## git
autoload -Uz vcs_info && vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

## prompt
separator_1=$'\UE0C4\UE0C0\UE0C2'
separator_2=$'\UE0C1\UE0C0\UE0C4'
separator_3=$'\UE0C0\UE0C2'
separator_4=$'\UE0C1\UE0C0'
color_1='095'
color_2='236'
root_state='%(!.#.$)'
user_state='[%n]'
path_state='%'${width}'<..<%~%<<'
prompt_1="\
%F{${color_2}}╭──${separator_1}%f\
%K{${color_2}}%F{${color_1}}${separator_1}%f%k\
%K{${color_1}}${user_state}%k\
%K{${color_2}}%F{${color_1}}${separator_2}%f%k\
%K{${color_2}} ${path_state}%k\
%F{${color_2}}${separator_2}%f \
"

prompt_2="\
%F{${color_2}}╰────%f\
%F{${color_1}}${root_state} %f\
"
export PROMPT=${prompt_1}$vcs_info_msg_0_$'\n'${prompt_2}
precmd() {
   precmd() {
      echo
      vcs_info
   }
}

## set
setopt IGNOREEOF
setopt no_flow_control
setopt share_history
setopt histignorealldups
setopt correct

## default
alias sudo='sudo '
alias vim='nvim '
alias edit='vim'
alias rmf='rm -rf'
alias so='source'
alias to='touch'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias ..='cd ..'
alias ...='cd ../..'
alias cdg='cd ~/git'

## rc
# zsh
alias ez='edit ~/.zshrc'
alias sz='so ~/.zshrc'
alias ev='edit ~/.config/nvim/init.vim'
alias ed='edit ~/.config/nvim/toml/dein.toml'
alias edl='edit ~/.config/nvim/toml/dein_lazy.toml'
# tmux
alias et='edit ~/.tmux.conf'

## expand
alias mkcd='mkdircd'

## expand function
function mkdircd() {
	mkdir $1 -p && cd $1
}

export DENO_INSTALL="/home/ophis_wsl/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/ophis_wsl/.cargo/bin:$PATH"

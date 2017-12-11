# paths
export HOME=/Users/redwan

export PATH=/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin

export SHELL=$(which zsh)
export ZSH=$HOME/.oh-my-zsh

export PY_PROJECTS=$HOME/Python
export CPP_PROJECTS=$HOME/C++

# default editor
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# theme and style
ZSH_THEME='tjkirch'
zstyle ':completion:*' list-colors'' 

# environment
export TERM='xterm-256color'
export LANG=en_US.UTF-8

# plugins 
plugins=(history history-substring-search git brew osx zsh-syntax-highlighting colored-man-pages)
source $ZSH/oh-my-zsh.sh

# aliases
alias ll="ls -lArth"

alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"

alias ..="cd ../"
alias ...="cd ../../"

alias c="clear"

alias netCons="lsof -i"
alias cleanDS="sudo find . -type f -name '*.DS_Store' -ls -delete"

# zsh
alias zshrc="vim $HOME/.zshrc"
alias zshup="source $HOME/.zshrc"

# vim
alias vimrc="vim $HOME/.vimrc"

# tmux
alias tmrc="vim $HOME/.tmux.conf"
alias tmup="tmux source-file $HOME/.tmux.conf"

alias tm="tmux new -s"
alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"
alias tmc="clear && tmux clear-history"
alias tmk="tmux kill-session -t"

# local search
fln () { /usr/bin/find . -name "$@" ; }
flns () { /usr/bin/find . -name "$@"'*' ; }
flne () { /usr/bin/find . -name '*'"$@" ; }
flnc () { /usr/bin/find . -name '*'"$@"'*' ; }

# global search
fgn () { sudo /usr/bin/find / -name "$@" ; }
fgns () { sudo /usr/bin/find / -name "$@"'*' ; }
fgne () { sudo /usr/bin/find / -name '*'"$@" ; }
fgnc () { sudo /usr/bin/find / -name '*'"$@"'*' ; }

# external
source $HOME/.logsql.sh
source $HOME/.logoanda.sh

# ls colors
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"

# autostart a tmux session if does not exist
if [[ -z "$TMUX" ]]
then	
	ID="`tmux ls | grep -vm1 attached | cut -d: -f1`"
	if [[ -z "$ID" ]]
	then
		tmux new-session
	else
		tmux attach-session -t "$ID"
	fi
fi

# pip zsh completion
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip

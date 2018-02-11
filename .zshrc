# paths
export HOME=/Users/redwan
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export SHELL=$(which zsh)
export ZSH=$HOME/.oh-my-zsh

# default editor
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# theme and style
export ZSH_THEME='tjkirch'
zstyle ':completion:*' list-colors'' 

# environment
export TERM='xterm-256color'
export LANG=en_US.UTF-8

# plugins 
plugins=(history history-substring-search git brew osx zsh-syntax-highlighting colored-man-pages)
source $ZSH/oh-my-zsh.sh

# aliases
alias ll="ls -lArth"
alias ..="cd ../"
alias ...="cd ../../"
alias clearDS="sudo find . -type f -name '*.DS_Store' -ls -delete"
alias clearCache="rm -rf $HOME/.cache/*"

# zsh
alias zshrc="vim $HOME/.zshrc"
alias zshup="source $HOME/.zshrc"

# vim
alias vimrc="vim $HOME/.vimrc"

# tmux
alias tmrc="vim $HOME/.tmux.conf"
alias tmup="tmux source-file $HOME/.tmux.conf"

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

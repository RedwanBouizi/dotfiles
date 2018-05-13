export HOME=/Users/redwan
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export SHELL=$(which zsh)
export ZSH=$HOME/.oh-my-zsh

export CC=/usr/local/bin/gcc
export CXX=/usr/local/bin/gcc
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home

export DATAPATH=$HOME/research.db
export PARAMS_CFG_PATH=$HOME/repo/RC/cfg/params_config.txt
export DATA_CFG_PATH=$HOME/repo/RC/cfg/data_config.txt

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export ZSH_THEME='tjkirch'
zstyle ':completion:*' list-colors'' 
export TERM='xterm-256color'
export LANG=en_US.UTF-8

plugins=(history history-substring-search git brew osx zsh-syntax-highlighting colored-man-pages)
source $ZSH/oh-my-zsh.sh

alias ll="ls -lArth"
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias ..="cd ../"
alias ...="cd ../../"
alias clearDS="sudo find . -type f -name '*.DS_Store' -ls -delete"
alias clearCache="rm -rf $HOME/.cache/*"

alias edzsh="vim $HOME/.zshrc; source $HOME/.zshrc"
alias edtm="vim $HOME/.tmux.conf; tmux source-file $HOME/.tmux.conf"
alias vimrc="vim $HOME/.vimrc"

alias cmake_debug="cmake -DCMAKE_BUILD_TYPE=Debug ../.."
alias cmake_release="cmake -DCMAKE_BUILD_TYPE=Release ../.."

alias grc="cd $HOME/repo/RC"

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

function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip

source  $HOME/.keys.sh

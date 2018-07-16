configure_basis()
{
    export PATH=$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/sbin
    export CC=/usr/bin/gcc
    export CXX=/usr/bin/gcc
    export CPATH=/usr/include
    export LIBRARY_PATH=/usr/lib

    export EDITOR='vim'
    export USE_EDITOR=$EDITOR
    export VISUAL=$EDITOR
    export TERM='xterm-256color'
    export PS1='\e[0;34m\u@\h\e[m \w \e[0;31m\$\e[m '

    alias ..='cd ../'
    alias ll='ls --color=auto -lArth'
    alias grep='grep --color=auto'
    alias envg='env | grep'

    alias edbash="vim $HOME/.bashrc; source $HOME/.bashrc"
    alias edvim="vim $HOME/.vimrc"
}

configure_private()
{
    source $HOME/private/.alpha_vantage
}

configure_rc()
{
    alias grc="cd $HOME/repo/RC"
    alias cmake_debug="cmake -DCMAKE_BUILD_TYPE=Debug ../.."
    alias cmake_release="cmake -DCMAKE_BUILD_TYPE=Release ../.."
    export DATAPATH=$HOME/data/research.db
    export DATA_CFG=$HOME/repo/RC/cfg/data.cfg
    export PARAMS_CFG=$HOME/repo/RC/cfg/params.cfg
    export PSO_CFG=$HOME/repo/RC/cfg/pso.cfg
}

configure_basis
configure_rc

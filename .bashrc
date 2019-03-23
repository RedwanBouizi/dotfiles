configure_basis()
{
    export PATH=$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/sbin
    export CC=/usr/bin/gcc
    export CXX=/usr/bin/gcc
    export CPATH=/usr/include
    export LIBRARY_PATH=/usr/lib
    export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib
    alias cmake_debug="cmake -DCMAKE_BUILD_TYPE=Debug ../.."
    alias cmake_release="cmake -DCMAKE_BUILD_TYPE=Release ../.."

    export EDITOR="vim"
    export VISUAL="vim"
    export TERM="xterm-256color"
    export PS1="\u@\h \w $ "

    alias ..="cd ../"
    alias ls="ls --color=auto"
    alias ll="ls -lArth"
    alias grep="grep --color=auto"
    alias envg="env | grep"

    alias edbash="vim $HOME/.bashrc; source $HOME/.bashrc"
    alias edvim="vim $HOME/.vimrc"
    alias flake8="flake8 --ignore=E501,E702"

    export DATAPATH="$HOME/data/finResearch.db"
    export ARC_REPO="$HOME/repo/ARC"
    export ARC_CONFIG="$HOME/repo/ARC/arc/configs/baseline.cfg"
    alias arc="cd $ARC_REPO"
    alias clion="$HOME/clion-2018.3.4/bin/clion.sh"
}

configure_private()
{
    source $HOME/private/.alpha_vantage
}

configure_basis

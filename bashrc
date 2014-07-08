export UEBER_DIR=$HOME/projects/ueber
PATH=$PATH:$HOME/.rvm/bin:$HOME/bin # Add RVM to PATH for scripting
export EDITOR=vim


set -o vi

export DEPENDENCY_MODULE_PATH=~/projects/sifi_cmake
export DEPENDENCY_DIRECTORY=~/projects/deps
alias smake="cmake -DCMAKE_MODULE_PATH=${DEPENDENCY_MODULE_PATH} -DDEPENDENCY_DIRECTORY=${DEPENDENCY_DIRECTORY} -DPRE_BUILT_DEPS=1"
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-1.9

# graphical emacs
alias gemacs="open -a emacs"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
    local       GREEN="\[\033[0;32m\]"
    PS1="\[\e[0,36m\][\u@\h:\w]$> \[\e[m\]$GREEN\$(parse_git_branch)\[\033[01;34m\]\$\[\033[00m\] "
}
proml

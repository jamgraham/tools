export ZSH="~/.oh-my-zsh"

alias gc="git checkout"
alias g="git"
alias dc="docker-compose"
alias dm="docker-machine"
alias bastion="ssh xxx"
alias gopath="cd ~/go-workspace/src/github.com"
alias dockerrm="docker rm $(docker ps -q -f 'status=exited')"
alias dockerrmi="docker rmi $(docker images -q -f "dangling=true")"

echo 'export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"' >> ~/.zshrc

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /etc/profile
source ~/.rvm/scripts/rvm

export PATH=~/bin:$PATH

PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

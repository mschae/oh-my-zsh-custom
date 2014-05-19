dev() { cd ~/src/$1; }
_dev() { _files -W ~/src -/; }
compdef _dev dev

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR=vim

alias zshconfig="$EDITOR ~/.zshrc"
alias omzconfig="$EDITOR ~/.oh-my-zsh"
alias vimconfig="$EDITOR ~/.vim"

alias fs='bundle install && bundle exec foreman start'

alias b=bundle
alias be='bundle exec'

alias grp='gitc review pass'
alias grf='gitc review fail'
alias fcklbj=grf

gcoid() { git branch | grep $1 | xargs git checkout }

unsetopt correct_all

ZSH_THEME="mschae_agnoster"
DEFAULT_USER="ms2"

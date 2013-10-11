dev() { cd ~/src/$1; }
_dev() { _files -W ~/src -/; }
compdef _dev dev

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR=vim
export VISUAL_EDITOR=mvim

alias zshconfig="$VISUAL_EDITOR ~/.zshrc"
alias omzconfig="$VISUAL_EDITOR ~/.oh-my-zsh"
alias vimconfig="$VISUAL_EDITOR ~/.vim"

# Rails Aliases
alias schemaload='RAILS_ENV=test rake db:schema:load'
alias testmigrate='RAILE_ENV=test rake db:migrate'

alias fs='bundle install && foreman start'
alias grd='schemaload && testmigrate && guard'

alias b=bundle
alias be='bundle exec'

alias m=mvim

# Start/Stop Commands
alias 'pg.start'='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias 'pg.stop'='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias 'redis.start'='redis-server /usr/local/etc/redis.conf'
alias 'redis.stop'='kill `cat /usr/local/var/run/redis.pid`'

alias 'mysql.start'='mysql.server start'
alias 'mysql.stop'='mysql.server stop'

powit() { ln -s $PWD ~/.pow/${PWD:s/_/-/:t} }

unsetopt correct_all

ZSH_THEME="mschae_agnoster"
DEFAULT_USER="ms2"

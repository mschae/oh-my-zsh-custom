dev() { cd ~/dev/$1; }
_dev() { _files -W ~/dev -/; }
compdef _dev dev

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

fu() { cd ~/dev/fuchs/$1; }
_fu() { _files -W ~/dev/fuchs -/; }
compdef _fu fu

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzshconfig="$EDITOR ~/.oh-my-zsh"
alias vimconfig="$EDITOR ~/.vim"

# Rails Aliases
alias schemaload='RAILS_ENV=test rake db:schema:load'
alias testmigrate='RAILE_ENV=test rake db:migrate'

alias fs='bundle install && foreman start'
alias grd='schemaload && testmigrate && guard'

alias m=mvim

# Start/Stop Commands
alias 'pg.start'='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias 'pg.stop'='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias 'redis.start'='redis-server /usr/local/etc/redis.conf'
alias 'redis.stop'='kill `cat /usr/local/var/run/redis.pid`'

alias 'mysql.start'='mysql.server start'
alias 'mysql.stop'='mysql.server stop'

unsetopt correct_all

ZSH_THEME="bira"

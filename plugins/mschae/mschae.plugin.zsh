dev() { cd ~/dev/$1; }
_dev() { _files -W ~/dev -/; }
compdef _dev dev

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"

alias use='rvm use'

# Rails Aliases
alias schemaload='RAILS_ENV=test rake db:schema:load'
alias testmigrate='RAILE_ENV=test rake db:migrate'

alias fs='bundle install && foreman start'
alias grd='schemaload && testmigrate && guard'

# Start/Stop Commands
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias startredis='redis-server /usr/local/etc/redis.conf'
alias stopredis='kill `cat /usr/local/var/run/redis.pid`'

unsetopt correct_all

ZSH_THEME="bira"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

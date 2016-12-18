(($+commands[ruby])) || return 0

# Aliases with disabled zsh correction.
alias bun='nocorrect bundle'
alias bex='nocorrect bundle exec'

[[ "$(platform)" == 'windows' ]] || return 0

verbose Setting up Windows Ruby aliases

# Initial Ruby aliases, call again if you installed new gems.
fpath=(${0%/*}/functions $fpath)
autoload -Uz update-ruby-aliases && update-ruby-aliases --no-verbose

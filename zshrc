# https://github.com/paradox460/prezto
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Git escape wonderfulness
autoload -Uz git-escape-magic
git-escape-magic

source ~/dotfiles/functions
source ~/dotfiles/aliases
source ~/dotfiles/ruby_settings

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

setopt APPEND_HISTORY
HISTSIZE=5200
SAVEHIST=5000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

unsetopt correct

export EDITOR='subl -w'

export PATH="$HOME/Library/Haskell/bin:/usr/local/heroku/bin:/usr/local/share/npm/bin:$PATH"
alias conan=rake

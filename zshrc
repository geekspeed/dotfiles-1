# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="afowler"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

chpwd() {
  [[ -o interactive ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}

source ~/dotfiles/functions
source ~/dotfiles/aliases
source ~/dotfiles/ruby_settings

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

unsetopt correct_all

export EDITOR='subl -w'

export PATH="$HOME/Library/Haskell/bin:/usr/local/heroku/bin:/usr/local/share/npm/bin:$PATH"
alias conan=rake

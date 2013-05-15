# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="bira"

DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(autojump brew gem git vagrant knife)

source $ZSH/oh-my-zsh.sh

# disable autocorrect
unsetopt correct_all

# homebrew only
[[ `uname` == "Darwin" ]] && export PATH=/usr/local/bin:$PATH

# nodejs / npm
[[ -d "/usr/local/share/npm/bin" ]] && export PATH=/usr/local/share/npm/bin:$PATH

alias ll='ls -lh'
alias l='ls -lah'
alias bi='bundle install --binstubs=.bin'

# use most as pager if available
if which most > /dev/null; then
  export PAGER=most
fi

export EDITOR=vim

# ctrl+left/right
bindkey '5D' emacs-backward-word
bindkey '5C' emacs-forward-word

# history search up and down
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Path to your oh-my-zsh configuration.
export TERM="xterm-256color"

ZSH=$HOME/git/zsh-dotfiles/oh-my-zsh
ZSH_CUSTOM=$HOME/git/zsh-dotfiles/custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dangerous"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  history
  vcs
  dir
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_CUSTOM_RUBY="echo -n '\ue21e'"
#POWERLEVEL9K_CUSTOM_RUBY_FOREGROUND="black"
#POWERLEVEL9K_CUSTOM_RUBY_BACKGROUND="red"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt rmstarsilent
setopt nohistverify

export EDITOR=vim
zstyle ':completion:*' matcher-list ''

alias pushdep='cd && sudo rsync -av --exclude=deployment-scripts/modules ~deploy/deployment-scripts . && sudo chown -R david deployment-scripts && cd deployment-scripts && git push'

alias ss='sudo su -'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=./bin:$PATH

unalias run-help 2>/dev/null
autoload run-help
HELPDIR=/usr/local/share/zsh/help
alias x='exit'

alias dog=pygmentize

#if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
#  source ~/.gnupg/.gpg-agent-info
#  export GPG_AGENT_INFO
#else
#  eval $(gpg-agent --daemon)
#fi

alias terminal-notifier='reattach-to-user-namespace terminal-notifier'
eval "$(nodenv init -)"

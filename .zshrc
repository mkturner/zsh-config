# Path to your oh-my-zsh inDocumentsiCode/Mobile/on.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="doubleend"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
  export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME:/usr/local/bin:/bin:$PATH

export PATH=$HOME:/usr/local/git/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# added by Anaconda3 2.0.1 installer
#export PATH="/Users/marvin/anaconda/bin:$PATH"

#Postgres addition
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

#Android SDK location
export PATH="/Users/marvin/Library/Android/SDK/platform-tools:$PATH"

#PHP 5.6 location
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export EDITOR='subl -w'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gpl='git pull'
alias gr='git remote'
alias gpom="git push -u origin master"
alias gp='git push'
alias gd='git diff | subl'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias glg='git log --oneline --graph --decorate'

alias saf='open -a safari'
alias chr='open -a chrome'
alias fox='open -a firefox'
alias opr='open -a opera'
alias cdc='cd ~/Documents/Code'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias empty='rm -rf .Trash/*'
alias fuck='$(thefuck $(fc -ln -1))'
alias bye='exit'

# python /django stuff
alias py='python'
alias py3='python3'

alias djangover='python -c "from __future__ import print_function; import django; print(django.get_version())"'
alias pyman='./manage.py'

function mkcd () {
	mkdir "$1" && cd "$1"
}

function mkcg () {
	mkdir "$1" && cd "$1" && git init
}

function browsers () {
	lw=('saf' 'fox' 'opr')

	for i in $lw; do
		$i $1
	done
}

function activate() {
    export VIRTUAL_ENV_DISABLE_PROMPT='1'
    pyenv activate $1
}

function zshconfig() {
    zshrc=~/.zshrc

    subl -w $zshrc
    source $zshrc
}


#unalias run-help
#autoload run-help
#HELPDIR=/usr/local/share/zsh/help

export PATH=/usr/local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# put pyenv shims directory before /usr/local/bin
export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
# Add NVM "                  "
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export VIRTUAL_ENV_DISABLE_PROMPT='1'


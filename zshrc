# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="trunkate_left"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# Work related aliases
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim' #use vim8 from brew
alias lla='ll -a'
alias lll='ll -a | lolcat'
alias my='cd ~/code/my/'
alias work='cd ~/code/work/'
alias projects='cd ~/code/klarna/team-panda/Projects'
alias panda='cd ~/code/klarna/team-panda'
alias agical='cd ~/code/work/agical/'
alias cls='clear'
alias rcop='rubocop -c ~/Projects/style-guide/rubocop.yml'
alias dcu='docker-compose up'
alias dcl='docker-compose logs'
alias dcb='docker-compose build'
alias dcr='docker-compose run'
alias myip='ifconfig | grep -e "inet\s"'
alias weather='curl wttr.in/~Stockholm'
alias less='less -N'

# Ruby
alias be='noglob bundle exec'
alias rake='noglob rake'
alias brake='noglob bundle exec rake'
alias rspec='noglob bundle exec rspec'
alias guard='noglob bundle exec guard'
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias mex="iex -S mix"
alias docker_kill_ps="docker ps -aq | awk '{print $1}' | xargs docker rm -f"
alias docker_kill_images="docker images -aq | awk '{print $1}' | xargs docker rmi -f"

#git
alias gpr="git pull -v -n --rebase"
# tmux
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new -s"

#vim `gst --porcelain | awk '{ print $2 }'` 

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
# User configuration

export VIMCONFIG=~/.vim
export VIMDATA=~/.vim
export PATH="/~/.rbenv/bin:usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:~/bin:/Users/krirou/Applications/Firefox.app/Contents/MacOS:$PATH"
export PATH=$PATH:$VIMCONFIG/pack/bundle/start/fzf/bin
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Encodings....
export LC_ALL=sv_SE.UTF-8  
export LANG=se_SE.UTF-8

eval "$(rbenv init -)"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. /usr/local/etc/profile.d/z.sh


# Klarna export
#

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

export PATH="/usr/local/heroku/bin:/Users/kristoffer.roupe/.rbenv/shims:/~/.rbenv/bin:usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:~/bin:/Users/krirou/Applications/Firefox.app/Contents/MacOS:/usr/local/heroku/bin:/Users/kristoffer.roupe/.rbenv/shims:/~/.rbenv/bin:usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:~/bin:/Users/krirou/Applications/Firefox.app/Contents/MacOS:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Users/kristoffer.roupe/go/bin:/usr/local/lib/python2.7/site-packages:$PATH"
export GOPATH=/Users/kristoffer.roupe/go
export AWS_PROFILE=panda@klarna-non-production
export TEAM=panda

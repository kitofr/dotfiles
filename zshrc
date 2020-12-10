#zmodload zsh/zprof

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export AGNOSTER_PROMPT_SEGMENTS[2]=
export TERM="xterm-256color"

# Work related aliases
alias agical='cd ~/code/work/agical/'
alias cls='clear'
alias code='cd ~/code/'
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcd='docker-compose down --remove-orphans --volumes'
alias dcl='docker-compose logs'
alias dcr='docker-compose run'
alias dcu='docker-compose up'
alias less='less -N'
alias lla='ll -a'
alias lll='ll -a | lolcat'
alias mutt='neomutt'
alias my='cd ~/code/my/'
alias myip='ifconfig | grep -e "inet\s"'
alias rcop='rubocop -c ~/Projects/style-guide/rubocop.yml'
alias vi='nvim'
alias vim='nvim' #use vim8 from brew
alias weather='curl wttr.in/~Stockholm'
alias work='cd ~/code/spotify/'

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
alias docker_kill_volumes="docker volume rm $(docker volume ls -qf dangling=true)"

#javacript
alias yarni='yarn install --prefer-offline'
alias jtags="ctags -R embed-podcast embed js mobile-web-player server test && sed -i ‘’ -E ‘/^(if|switch|function|module\.exports|it|describe).+language:js$/d’ tags"

#git
alias g='git'
alias ga='git add'
alias gs='git status'
alias gsu='git status -uno'
alias gl='git l'
alias gp='git push'
alias gpv='git push --no-verify'
alias gc='git commit -v'
alias gd='git diff --color=always'
alias gca='git commit -av'
alias gco='git checkout'
alias gcv='git commit -av --no-verify'
alias grc='git rebase --continue'
alias gst='git status'
alias gup='git pull -v -n --rebase'
alias gitk='/usr/local/bin/gitk'
alias gclean='git clean -fd'
alias gshowf='git show --name-only --oneline'
alias gdeletemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias gcountauthor='git shortlog -sn'

# tmux
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new -s"

#nvm

# spotify
alias spm='npm --registry https://artifactory.spotify.net/artifactory/api/npm/virtual-npm --userconfig ~/.spmrc --always-auth=true'

export VIMCONFIG=~/.vim
export VIMDATA=~/.vim
export RIPGREP_CONFIG_PATH='~/.ripgreprc'
export FZF_DEFAULT_COMMAND='rg --files'

export PATH="./node_modules/.bin:/~/.rbenv/bin:usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:~/bin:/Users/krirou/Applications/Firefox.app/Contents/MacOS:/usr/local/opt/node@8/bin:$PATH"
export PATH=$PATH:$VIMCONFIG/pack/minpac/start/fzf/bin

# # Preferred editor for local and remote sessions
export EDITOR='nvim'
export VISUAL='nvim'

eval "$(rbenv init -)"
export LDFLAGS="-L/usr/local/opt/node@8/lib"
export CPPFLAGS="-I/usr/local/opt/node@8/include"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# git locale
export LANG="en_US.UTF-8"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kristofferr/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kristofferr/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kristofferr/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kristofferr/google-cloud-sdk/completion.zsh.inc'; fi

vim_show() {
  vim $(git show --name-only --oneline "$1" | tail -n+2)
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# java
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_13_HOME=$(/usr/libexec/java_home -v13)

alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java13='export JAVA_HOME=$JAVA_13_HOME'

# default to Java 11
java11


# perl and ack
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# fnm
# export PATH=$HOME/.fnm:$PATH
# eval "`fnm env --multi`"

export CPPFLAGS="-I/usr/local/opt/openjdk/include"

export PATH=/usr/local/opt/avr-gcc@7/bin:$PATH
export PATH="$JAVA_HOME/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export ERL_AFLAGS="-kernel shell_history enabled"
. /usr/local/opt/asdf/asdf.sh

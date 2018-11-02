#Add new vcr cassettes and remove specs. Path to your oh-my-zsh configuration.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export TERM="xterm-256color"

# Work related aliases
alias vi='nvim'
alias vim='nvim' #use vim8 from brew
alias lla='ll -a'
alias lll='ll -a | lolcat'
alias my='cd ~/code/my/'
alias code='cd ~/code/'
alias agical='cd ~/code/work/agical/'
alias cls='clear'
alias rcop='rubocop -c ~/Projects/style-guide/rubocop.yml'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcl='docker-compose logs'
alias dcb='docker-compose build'
alias dcr='docker-compose run'
alias dcd='docker-compose down --remove-orphans --volumes'
alias myip='ifconfig | grep -e "inet\s"'
alias weather='curl wttr.in/~Stockholm'
alias less='less -N'
alias mutt='neomutt'
alias elm='./node_modules/.bin/elm'

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

#git
alias g='git'
alias ga='git add'
alias gs='git status'
alias gsu='git status -uno'
alias gl='git l'
alias gp='git push'
alias gc='git commit -v'
alias gd='git diff'
alias gca='git commit -av'
alias gco='git checkout'
alias gcv='git commit -av --no-verify'
alias gst='git status'
alias gup='git pull -v -n --rebase'
alias gclean='git clean -fd'
alias gshowf='git show --name-only --oneline'

# tmux
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new -s"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#keix elixir
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"


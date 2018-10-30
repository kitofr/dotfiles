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
alias work='cd ~/code/work/'
alias projects='cd ~/code/klarna/team-panda/Projects'
alias pandas='cd ~/code/klarna/team-panda'
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
alias g='git'
alias gs='git status'
alias gl='git l'
alias gp='git push'
alias gc='git commit -v'
alias gd='git diff'
alias gca='git commit -av'
alias gst='git status'
alias gpr="git pull -v -n --rebase"

# tmux
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new -s"

export VIMCONFIG=~/.vim
export VIMDATA=~/.vim
export RIPGREP_CONFIG_PATH='~/.ripgreprc'
export FZF_DEFAULT_COMMAND='rg --files'

export PATH="/~/.rbenv/bin:usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:~/bin:/Users/krirou/Applications/Firefox.app/Contents/MacOS:/usr/local/opt/node@8/bin:$PATH"
export PATH=$PATH:$VIMCONFIG/pack/minpac/start/fzf/bin

# # Preferred editor for local and remote sessions
export EDITOR='nvim'
export VISUAL='nvim'

eval "$(rbenv init -)"
export LDFLAGS="-L/usr/local/opt/node@8/lib"
export CPPFLAGS="-I/usr/local/opt/node@8/include"



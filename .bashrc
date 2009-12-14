# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

export RAILS_ENV=development

CLASSPATH=/usr/local/lib/ruby/gems/1.8/gems/jruby-openssl-0.5.2/lib/bcprov-jdk14-139.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jruby-openssl-0.5.2/lib/bcprov-jdk14-139.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jruby-openssl-0.5.2/lib/bcmail-jdk14-139.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jruby-openssl-0.5.2/lib/jopenssl.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/mongrel-1.1.5-java/lib/http11.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/activerecord-jdbc-adapter-0.9.2/lib/jdbc_adapter/jdbc_adapter_internal.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/webrat-0.5.3/vendor/selenium-server.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/warbler-0.9.14/lib/jruby-rack-0.9.5.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jruby-jars-1.3.1/lib/jruby-stdlib-1.3.1.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jruby-jars-1.3.1/lib/jruby-core-1.3.1.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/gems/1.8/gems/jdbc-mysql-5.0.4/lib/mysql-connector-java-5.0.4-bin.jar
CLASSPATH=$CLASSPATH:/usr/local/lib/ruby/site_ruby/shared/yecht.jar:/usr/local/lib/profile.jar
export CLASSPATH

export TRACKER_API_TOKEN=911c459576a40d9da1141439f0c59b8c

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ..='cd ..'
alias cd..='..'
alias ll='ls -l -h'
alias lla='ls -l -a -h'
alias lldf='ll -d -F'
alias la='ls -A'
alias l='ls -CF'
alias cls=clear
alias h=history
alias hc='history -c'
alias sudo='sudo env PATH=$PATH'

alias jrake='jruby -S rake'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

source ~/.git-completion.sh

export PATH=/var/lib/gems/1.8/bin:$PATH

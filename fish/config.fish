set -x LC_CTYPE sv_SE.UTF-8
# https://github.com/sstephenson/rbenv/issues/459
set PATH $HOME/.rbenv/bin $PATH
status --is-interactive ; and source (rbenv init - | psub)

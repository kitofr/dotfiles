#!/bin/bash

# source control
apt-get install git-core subversion git-svn gitk --assume-yes

# servers
apt-get install apache2 apache2-mpm-prefork apache2-prefork-dev --assume-yes

# desktop tools
echo "Installing development tools"
apt-get install vim-gnome xvfb mysql-server mysql-query-browser --assume-yes

# ruby (and deps)
apt-get install ruby1.8-dev ruby1.8 rake rails rubygems libdbd-mysql-ruby1.8 libxslt1-dev irb ri rdoc libzlib-ruby libyaml-ruby libreadline-ruby libncurses-ruby libcurses-ruby libruby libruby-extras libfcgi-dev libfcgi-ruby1.8 build-essential libopenssl-ruby libdbm-ruby libdbi-ruby libdbd-sqlite3-ruby sqlite3 libsqlite3-dev librestclient-ruby1.8 libsqlite3-ruby libxml-ruby libxml2-dev libffi-ruby1.8 --assume-yes

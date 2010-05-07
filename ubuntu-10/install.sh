#!/bin/bash

# source control
apt-get install git-core subversion --assume-yes

# servers
apt-get install apache2  --assume-yes

# desktop tools
if [ $# -gt 0 -a $1 = "development" ]; then
  echo "Installing development tools"
  apt-get install vim-gnome xvfb mysql-server mysql-query-browser --assume-yes
  
  if [ $2 = "rubymine"]; then
    # install java and unpack rubymine
    echo "!!!Experimental!!! - You'll need to set your JAVA_HOME/JDK_HOME/RUBYMINE_JDK after installation if you 'care' about warnings."
    echo "@see_also : http://www.jetbrains.net/devnet/message/5230386;jsessionid=24F5BDD42D5E5FFBB59D4AB6AC155D35"
    apt-get install openjdk-6-jre-headless openjdk-6-jdk --assume-yes
    wget http://download.jetbrains.com/ruby/rubymine-2.0.2.tar.gz 
    tar -xvzf rubymine-2.0.2.tar.gz
    mv rubymine-2.0.2 /opt/rubymine
    ln -s /usr/bin/java /bin/java
  fi
fi

# ruby (and deps)
apt-get install ruby rake rails rubygems libdbd-mysql-ruby1.8 libxslt1-dev irb ri rdoc ruby1.8-dev libzlib-ruby libyaml-ruby libreadline-ruby libncurses-ruby libcurses-ruby libruby libruby-extras libfcgi-ruby1.8 build-essential libopenssl-ruby libdbm-ruby libdbi-ruby libdbd-sqlite3-ruby sqlite3 libsqlite3-dev libsqlite3-ruby libxml-ruby libxml2-dev --assume-yes

# install gems
GEM_OPTS="-q --backtrace --no-ri --no-rdoc"
gem install cucumber -v=0.6.4 $GEM_OPTS
gem install rack open4 $GEM_OPTS
gem install actionmailer actionpack activerecord activeresource activesupport acts_as_audited authlogic builder cgi_multipart_eof_fix cucumber-rails daemons database_cleaner diff-lcs fastthread gem_plugin haml jrails json_pure mocha mongrel mysql polyglot rack-test rails rake rspec rspec-rails rubygems-update selenium-client term-ansicolor treetop uuidtools vlad nokogiri fastercsv webrat rest-client simple-rss test-spec camping fcgi machinist faker $GEM_OPTS

gem sources -a http://gems.github.com
gem install mislav-will_paginate spicycode-rcov $GEM_OPTS

# trollop - extra gem... 
# haml upgrade 2.2.23 -> 2.2.24
# json-pure upgrade 1.2.4 -> 1.4.2

# add gem/bin to path
PATH=$PATH:/var/lib/gems/1.8/bin:/home/dev/.gem/ruby/1.8/bin

#setup passenger
gem install passenger -v=2.2.11 $GEM_OPTS
apt-get install apache2-prefork-dev libapr1-dev libaprutil1-dev --assume-yes
passenger-install-apache2-module

PASSENGER_CONF="LoadModule passenger_module /var/lib/gems/1.8/gems/passenger-2.2.11/ext/apache2/mod_passenger.so\nPassengerRoot /var/lib/gems/1.8/gems/passenger-2.2.11\nPassengerRuby /usr/bin/ruby1.8"
echo $PASSENGER_CONF > /etc/apache2/conf.d/passenger.conf


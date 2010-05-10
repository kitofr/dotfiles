#!/bin/bash

# source control
apt-get install git-core subversion --assume-yes

# servers
apt-get install apache2 apache2-mpm-prefork apache2-prefork-dev --assume-yes

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
apt-get install ruby rake rails rubygems libdbd-mysql-ruby1.8 libxslt1-dev irb ri rdoc ruby1.8-dev libzlib-ruby libyaml-ruby libreadline-ruby libncurses-ruby libcurses-ruby libruby libruby-extras libfcgi-dev libfcgi-ruby1.8 build-essential libopenssl-ruby libdbm-ruby libdbi-ruby libdbd-sqlite3-ruby sqlite3 libsqlite3-dev librestclient-ruby1.8 libsqlite3-ruby libxml-ruby libxml2-dev --assume-yes

# install gems
GEM_OPTS="-q --backtrace --no-ri --no-rdoc"
gem install cucumber -v=0.6.4 $GEM_OPTS
gem install rack -v=1.0.1 $GEM_OPTS
gem install open4 -v=0.9.0 $GEM_OPTS
gem install gherkin $GEM_OPTS 
gem install actionmailer actionpack activerecord activeresource activesupport acts_as_audited authlogic builder cgi_multipart_eof_fix cucumber-rails daemons database_cleaner diff-lcs fastthread gem_plugin haml jrails json_pure memcache-client mocha mongrel mysql polyglot rack-test rails rake rspec rspec-rails rubygems-update selenium-client term-ansicolor treetop uuidtools vlad nokogiri fastercsv webrat rest-client simple-rss test-spec camping fcgi machinist faker $GEM_OPTS

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

CONF_FILE=/etc/apache2/conf.d/passenger.conf

echo "LoadModule passenger_module /var/lib/gems/1.8/gems/passenger-2.2.11/ext/apache2/mod_passenger.so" > $CONF_FILE
echo "PassengerRoot /var/lib/gems/1.8/gems/passenger-2.2.11" >> $CONF_FILE
echo "PassengerRuby /usr/bin/ruby1.8" >> $CONF_FILE

# build up a default web site so that passenger is set to go
echo ""
echo "<VirtualHost *:80>" >> $CONF_FILE
echo " ServerName csdweb2.qb.local" >> $CONF_FILE
echo " DocumentRoot /home/dev/Code/wtf/public" >> $CONF_FILE
echo " <Directory /home/dev/Code/wtf/public>" >> $CONF_FILE
echo "    Allow from all" >> $CONF_FILE
echo "    Options -MultiViews" >> $CONF_FILE
echo "  </Directory>" >> $CONF_FILE
echo "</VirtualHost>" >> $CONF_FILE

# kill apache default site
a2dissite default
/etc/init.d/apache2 restart

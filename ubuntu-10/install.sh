#!/bin/bash

# editor plz!
apt-get install vim-gnome

# source control
apt-get install git-core subersion

# servers
apt-get install apache2 mysql-server mysql-query-browser 

# ruby (and deps)
apt-get install ruby rake rubygems libxslt1-dev irb ri rdoc ruby1.8-dev libzlib-ruby libyaml-ruby libreadline-ruby libncurses-ruby libcurses-ruby libruby libruby-extras libfcgi-ruby1.8 build-essential libopenssl-ruby libdbm-ruby libdbi-ruby libdbd-sqlite3-ruby sqlite3 libsqlite3-dev libsqlite3-ruby libxml-ruby libxml2-dev 

# install gems
gem install cucumber -v=0.6.4
gem install actionmailer actionpack activerecord activeresource activesupport acts_as_audited authlogic builder cgi_multipart_eof_fix cucumber-rails daemons database_cleaner diff-lcs fastthread gem_plugin haml jrails json_pure mocha mongrel open4 passenger polyglot rack rack-test rails rake rspec rspec-rails rubygems-update selenium-client term-ansicolor treetop uuidtools vlad nokogiri fastercsv webrat

gem sources -a http://gems.github.com
gem install mislav-will_paginate spicycode-rcov

# trollop - extra gem... 
# haml upgrade 2.2.23 -> 2.2.24
# json-pure upgrade 1.2.4 -> 1.4.2

# add gem/bin to path
PATH=$PATH:/var/lib/gems/1.8/bin:/home/dev/.gem/ruby/1.8/bin

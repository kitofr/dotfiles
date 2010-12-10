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

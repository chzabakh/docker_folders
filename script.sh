cat /etc/apache2/sites-available/000-default.conf | tr "nigga" $HOST_IP > /tp && cat /tp > /etc/apache2/sites-available/000-default.conf
a2enmod ssl
a2ensite default-ssl
service apache2 stop
service apache2 start

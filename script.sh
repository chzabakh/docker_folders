sed -i -e "s/nigga/$HOST_IP/g" /etc/apache2/sites-available/000-default.conf
ENTRYPOINT a2enmod ssl
a2ensite default-ssl
service apache2 stop
service apache2 start

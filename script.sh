cat /docker_folders/p1 > /docker_folders/pf
printf "Redirect "/" "https://$HOST_IP:443/\\n"" > /docker_folders/p2
cat /docker_folders/p2 >> /docker_folders/pf
cat /docker_folders/p3 >> /docker_folders/pf
rm /etc/apache2/sites-available/000-default.conf
cp /docker_folders/pf /etc/apache2/sites-available/000-default.conf
a2enmod ssl
a2ensite default-ssl
service apache2 stop
service apache2 start

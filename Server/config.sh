#!/bin/bash
apt-get update &> /dev/null
apt-get upgrade &> /dev/null
apt-get install php5-fpm -y &> /dev/null
apt-get install nginx -y &> /dev/null
cp /var/www/nginx /etc/nginx/sites-available/nginx &> /dev/null
ln -s /etc/nginx/sites-available/nginx /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default
service nginx restart &> /dev/null

echo "Provisioning Done"

#!/bin/bash

apt-get update

# apache configuration
apt-get install -y apache2 php5 libapache2-mod-php5
rm -rf /var/www/html
ln -sf /vagrant /var/www/html

# mysql
# TODO make initial mysql setup
# apt-get install -y mysql-server mysql-client php5-mysql

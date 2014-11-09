#!/bin/bash

apt-get update > /dev/null

# apache configuration
apt-get install -y apache2 php5 libapache2-mod-php5 > /dev/null
rm -rf /var/www/html
ln -sf /vagrant /var/www/html

# PHP5
echo "Installing PHP"
apt-get install -y php5 libapache2-mod-php5 php5-common php5-dev php5-cli php5-fpm > /dev/null
apt-get install -y curl php5-curl php5-gd php5-mcrypt > /dev/null


# mysql
echo "Installing and configurating MySQL"
apt-get install -y debconf-utils > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt-get install -y mysql-server > /dev/null
apt-get install -y mysql-client php5-mysql > /dev/null

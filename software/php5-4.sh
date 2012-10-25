#!/bin/bash

echo "Ajout du dépôt PHP5.4\n"
add-apt-repository -y ppa:ondrej/php5

apt-get update
echo "Installation de PHP5.4\n"
apt-get install php5 php5-cli php-pear

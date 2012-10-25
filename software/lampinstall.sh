#!/bin/bash
# Mon script de "post installation" de GNU/Linux
#
# Lesmyrmidons - 06/2012
#
# Syntaxe: # sudo ./lampinstall.sh
#
# GPL
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor Boston, MA 02110-1301,  USA
#
# Release notes:
# 0.1.0: Premiere version du script
#
VERSION="0.1.0"

echo "Suppression des packages PHP, MySQL et APACHE"
aptitude remove php5 apache2 mysql-server
echo "Ajout du dépôt PHP5.4"
add-apt-repository -y ppa:ondrej/php5
echo "Ajout du dépôt de MariaDB"
/etc/apt/sources.list.d/mariadb.list < echo "deb http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu precise main
deb-src http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu precise main"
echo "Ajout du certificat serveur"
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
echo "Mise à jour des dépôts"
aptitude update

echo "Installation de PHP, MariaDB et Apache"
aptitude install apache2 php5 mariadb-server-5.5 php5-cli php5-curl php5-mysqlnd php5-xdebug php-pear 

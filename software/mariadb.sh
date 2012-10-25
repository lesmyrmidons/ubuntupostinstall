#!/bin/bash

echo "Ajout du dépôt de MariaDB\n"
echo "# MariaDB 5.5 repository list - created 2012-10-25 09:44 UTC
# http://downloads.mariadb.org/mariadb/repositories/
deb http://mirror2.hs-esslingen.de/mariadb/repo/5.5/ubuntu precise main
deb-src http://mirror2.hs-esslingen.de/mariadb/repo/5.5/ubuntu precise main" > /etc/apt/sources.list.d/mariadb.list

echo "Ajout du certificat serveur\n"
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db

apt-get update
echo "Installation de MariaDB\n"
apt-get install mariadb-server-5.5
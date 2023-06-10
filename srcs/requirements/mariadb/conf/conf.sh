#!/bin/bash

mkdir -p /run/mysqld/
chown mysql:mysql /run/mysqld

/etc/init.d/mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS ${DATABASE};\
			GRANT ALL ON ${DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';\
			FLUSH PRIVILEGES;"

/etc/init.d/mysql stop

mysqld --bind-address=0.0.0.0

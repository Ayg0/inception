#!/bin/bash

mkdir -p /run/mysqld/
chown mysql:mysql /run/mysqld

/etc/init.d/mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;\
			GRANT ALL ON wordpress.* TO 'wordpress_user'@'%' IDENTIFIED BY 'password';\
			FLUSH PRIVILEGES;"

/etc/init.d/mysql stop

mysqld --bind-address=0.0.0.0

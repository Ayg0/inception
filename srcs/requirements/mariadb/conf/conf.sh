#!/bin/bash

/etc/init.d/mysql start

mysql -u mysql -e "CREATE DATABASE WordPress;"

/etc/init.d/mysql stop

# mysqld --bind-address=0.0.0.0
mysqld --user=root
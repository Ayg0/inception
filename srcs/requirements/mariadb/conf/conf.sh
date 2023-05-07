#!/bin/bash

etc/init.d/mariadb restart

mysql -u root -e "CREATE DATABASE WordPress;"

mysql --user=root

#!/bin/bash

etc/init.d/mysql start

mysql -u root -e "CREATE DATABASE WordPress;"

mysql --user=root

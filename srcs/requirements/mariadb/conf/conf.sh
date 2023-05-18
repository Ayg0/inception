#!/bin/bash

# mkdir -p /run/mysqld
# chown mysql:mysql /run/mysqld

# /etc/init.d/mysql start

# mysql -u mysql -e "CREATE DATABASE WordPress;"

# /etc/init.d/mysql stop

# mysqld --bind-address=0.0.0.0
# mysqld --user=root

mkdir -p /run/mysqld/
chown mysql:mysql /run/mysqld

service mysql start
mysql <<< "create database if not exists wow;"
service mysql stop

mysqld --bind-address=0.0.0.0

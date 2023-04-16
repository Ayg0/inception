#!/bin/bash

mysql -V
exec /usr/bin/mysqld --user=mysql --console

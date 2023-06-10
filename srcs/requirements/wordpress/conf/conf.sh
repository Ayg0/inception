#!/bin/bash

/etc/init.d/php7.3-fpm start

mkdir blog
cd blog
wp core --allow-root download
wp config create --allow-root --dbname=${DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${DATABASE_HOST}
wp core --allow-root install --url=${DOMAIN_NAME} --title="TESTING WORDPRESS TED-DAFI" --admin_user=${ADM_WP_USER} --admin_password=${ADM_WP_PASSWORD} --admin_email=${ADM_WP_EMAIL}
wp user --allow-root create ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD}
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf;

php-fpm7.3 -F
#!/bin/bash

/etc/init.d/php7.3-fpm start

mkdir blog
cd blog
wp core --allow-root download
cp ../conf/wp-config.php .
wp core --allow-root install --url=https://localhost --title="TESTING WORDPRESS TED-DAFI" --admin_user=ad --admin_password=aa --admin_email=info@wp-cli.org
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf;

php-fpm7.3 -F
FROM debian:buster
RUN	apt-get update;\
	apt-get upgrade -y;\
	apt-get install -y php php-fpm curl php-mysql mariadb-client;\
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;\
	chmod +x wp-cli.phar; mv wp-cli.phar /usr/local/bin/wp;
RUN mkdir -p /var/www/html
COPY conf/*	conf/
# COPY conf/*	conf/
ENTRYPOINT ["bash", "conf/conf.sh"];
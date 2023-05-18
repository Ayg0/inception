FROM debian:buster
RUN apt-get update; \
	apt-get upgrade; \
	mkdir /confs;\
	apt-get install -y mariadb-server;
COPY conf/conf.sh /confs
# COPY conf/my.cnf /etc/mysql/
ENTRYPOINT ["bash", "confs/conf.sh"]

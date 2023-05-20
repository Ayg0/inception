FROM debian:buster
RUN	apt-get update;\
	apt-get upgrade -y;\
	apt-get install -y mariadb-server;
COPY conf/*	conf/
ENTRYPOINT ["bash", "conf/conf.sh"];
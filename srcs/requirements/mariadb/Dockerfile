FROM debian:buster
RUN apt-get update; \
	apt-get upgrade; \
	apt-get install mariadb-server -y;
COPY conf /confs
CMD ["bash", "confs/conf.sh"]

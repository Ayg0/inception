FROM debian:buster
RUN	apt-get update;\
	apt-get upgrade -y;\
	apt-get install -y nginx openssl;
COPY conf/default	/etc/nginx/sites-available/default
COPY tools/*		tools/
ENTRYPOINT ["bash", "/tools/run.sh"];
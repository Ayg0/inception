FROM debian:latest
RUN apt update && apt install mariadb-server -y
COPY conf /confs
CMD ["bash", "confs/conf.sh"]

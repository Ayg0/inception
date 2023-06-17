mariadb_volume = /home/ted-dafi/data/db
wordpress_volume = /home/ted-dafi/data/wp

all: build

build:
		mkdir -p $(wordpress_volume) $(mariadb_volume)
		docker-compose -f ./srcs/docker-compose.yml up --build

clean:
		docker-compose -f ./srcs/docker-compose.yml down --rmi all

fclean: clean
		docker-compose -f ./srcs/docker-compose.yml down -v
		rm -rf $(mariadb_volume) $(wordpress_volume)
re: fclean all

.PHONY: re fclean clean build all
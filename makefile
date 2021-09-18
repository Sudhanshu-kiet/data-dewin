all: up
prepare: 
	@sudo apt-get update
	@sudo apt install -y docker.io
	@sudo apt install -y docker-compose
	@sudo systemctl enable --now docker
	@echo "installing required packages"
up: prepare
	@echo "^^initialising container^^"
	@#! /bin/bash
	@if [ ! -d docker ]; then\
		mkdir docker;\
		if [ ! -d www ]; then\
			cd docker ;\
			mkdir www && cd ../../ ;\
		fi ;\
	fi
	@sudo cp ./index.php ./docker/www/;
	@sudo docker-compose up -d
teardown: down

	@sudo rm -rf ./docker
	@echo "^^removing files^^"
down:

	@sudo docker-compose down
	@echo "^^shutting down services^^"
